//2 motors-0 encoders no direction
#include <CurieBLE.h>
#include "CurieTimerOne.h"

int stepdegree=1000;                //Steps from the stepper motor per degree
const int oneSecInUsec = 1000000;   // A second in mirco second unit.
bool toggle = 0;                    // The LED status toggle
int time;                           // the variable used to set the Timer

//Number of steps needed(used inn timer)
int num;

//Number of steps used
int count=0;
int xpos=1600;
int ypos=0;
int newpos;
unsigned int movecount=0;

//Difference variable used by posdiff
int motor_direction=0;

//ENCODER VARIABLES
int encoder0PinA = 3;
bool aval=0;
int encoder0PinB = 4;
int encoder0PinZ = 5;
int encoder0pos=70;

int tmin = 78;
int tmax = 1500;
  int tmid=0;
  int timeval=0;
int tim=0;
BLEPeripheral blePeripheral;  // BLE Peripheral Device (the board you're programming)
BLEService ledService("19B10010-E8F2-537E-4F6C-D104768A1214"); // BLE LED Service

// BLE LED Switch Characteristic - custom 128-bit UUID, read and writable by central
BLEUnsignedCharCharacteristic switchCharacteristic("19B10001-E8F2-537E-4F6C-D104768A1214", BLERead | BLEWrite);

//Pin configurations
const int motor1 = 8;
const int motor2 = 10;
const int dir = 9;// pin to use for the direction
int sel;

void timedBlinkIsr()   // callback function when interrupt is asserted
{
  if (num>count){
    digitalWrite(sel, toggle);
    //digitalWrite(8, toggle);
    toggle = !toggle;  // use NOT operator to invert toggle value
    count++;
    movecount++;
 }
 else if(num==count){
    digitalWrite(sel,LOW);
    movecount=0;
 }
}

void setup() {
  Serial.begin(11520);
  // set LED pin to output mode
  pinMode(motor1, OUTPUT);
  pinMode(dir, OUTPUT);
  pinMode(11, OUTPUT);
  pinMode(motor2, OUTPUT);

  pinMode (encoder0PinA,INPUT);
  pinMode (encoder0PinB,INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(encoder0PinB),bhigh,RISING);
  pinMode (encoder0PinZ,INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(encoder0PinZ),zero,LOW);

  
// set advertised local name and service UUID:
  blePeripheral.setLocalName("LED");
  blePeripheral.setAdvertisedServiceUuid(ledService.uuid());

 // add service and characteristic:
  blePeripheral.addAttribute(ledService);
  blePeripheral.addAttribute(switchCharacteristic);
  // set the initial value for the characeristic:
  switchCharacteristic.setValue(0);


  // begin advertising BLE service:
  blePeripheral.begin();
  Serial.println("BLE LED Peripheral");

  tmid=(tmax-tmin)/2;
  timeval=tmax;
}

int posdiff(int a, int b){
  if (a>b){
    digitalWrite(dir,HIGH);
    digitalWrite(11,HIGH);
    return (a-b);
  }
  digitalWrite(dir,LOW);
  digitalWrite(11,LOW);
  return (b-a);  
}

int timecalc(){
  if((num-count)<1200){
    Serial.print("in if: ");
    timeval+=20;
  }
  else{
    Serial.print("in else: ");
    timeval-=20;
  }
  Serial.println(timeval);
  timeval = constrain(timeval,tmin,tmax);
  return timeval;
  //return 500;
}

void posupdate(int msel,int np,int xp,int yp){
  //ADD update code
  int dir=0;  
  int mp;
  Serial.print("Selected motor = ");
  Serial.println(msel);
  mp = (msel==1)?xp:yp;
  sel = (msel==1)?motor1:motor2;
  num=posdiff(mp,np);
  num=(num*2);
  count=0;
}

void loop() {
  int done=0;
  int msel=0;
  int temp=0;
  int tx=1;
  int dl=0;
  
// listen for BLE peripherals to connect:
  BLECentral central = blePeripheral.central();

  // if a central is connected to peripheral:
  if (central) {
    Serial.print("Connected to central: ");

    // print the central's MAC address:
    Serial.println(central.address());

    // while the central is still connected to peripheral:
    while (central.connected()) {
      //Serial.println(count);
      // if the remote device wrote to the characteristic,
      // use the value to control the LED:
      if (done==0) {
       if(switchCharacteristic.written()){
          if(msel==0){
            msel=switchCharacteristic.value();
          }
          else{
            temp=switchCharacteristic.value();
            dl++;
            newpos+=temp*tx;
            tx=tx*128;
            if(dl>=2){
              done=1;
              dl=0;
            }
          }
        }    
      }
      else{
        newpos=newpos*3200/3600;
        newpos=newpos*8;
        Serial.print("xpos old = ");
        Serial.println(xpos);
        Serial.print("newpos = ");
        Serial.println(newpos);
        //add code to update here
        posupdate(msel,newpos,xpos,0);
        
        tim=timecalc();  

        CurieTimerOne.start(tim,&timedBlinkIsr);
        
        xpos=newpos;//encoder0pos*3200/1024;
        newpos=0;
        done=0;
        msel=0;
        tx=1;
             

        Serial.print("xpos new = ");
        Serial.println(xpos);
        Serial.println("  ");
      }
      if (movecount%2==1){
        tim = timecalc(); 
        Serial.print("Changing time to ");
        Serial.println(tim); 
        CurieTimerOne.rdRstTickCount();
        CurieTimerOne.start(tim,&timedBlinkIsr);
      }
      else if (movecount==0){
        timeval=tmax;
      }
    }

    // when the central disconnects, print it out:
    Serial.print(F("Disconnected from central: "));
    Serial.println(central.address());
  }
}

void bhigh(){

 aval=digitalRead(encoder0PinA);
  //if(bval==HIGH){
  if(aval==HIGH){
    encoder0pos++;
  }
  else{
    encoder0pos--;
  }
  //}
}

void zero(){
  encoder0pos=0;
}
