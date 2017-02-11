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
int xpos=0;
int ypos=0;
int newpos;

//Difference variable used by posdiff
int motor_direction=0;

BLEPeripheral blePeripheral;  // BLE Peripheral Device (the board you're programming)
BLEService ledService("19B10000-E8F2-537E-4F6C-D104768A1214"); // BLE LED Service

// BLE LED Switch Characteristic - custom 128-bit UUID, read and writable by central
BLEUnsignedCharCharacteristic switchCharacteristic("19B10001-E8F2-537E-4F6C-D104768A1214", BLERead | BLEWrite);

//Pin configurations
const int motor1 = 13;
const int motor2 = 11;
const int dir = 12; // pin to use for the direction
int sel;


//ENCODER VARIABLES
int encoder0PinA = 3;
 int encoder0PinB = 4;
 int encoder0PinZ = 6;
 
void timedBlinkIsr()   // callback function when interrupt is asserted
{
  if (num>count){
    digitalWrite(sel, toggle);
    toggle = !toggle;  // use NOT operator to invert toggle value
    count++;
 }
}

void setup() {
  Serial.begin(11520);
  // set LED pin to output mode
  pinMode(motor1, OUTPUT);
  pinMode(dir, OUTPUT);
  pinMode(motor2, OUTPUT);
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

  //Encoder
   pinMode (encoder0PinA,INPUT);
   pinMode (encoder0PinB,INPUT);
   pinMode (encoder0PinZ,INPUT);
}

int posdiff(int a, int b){
  if (a>b){
    digitalWrite(dir,HIGH);
    return (a-b);
  }
  digitalWrite(dir,LOW);
  return (b-a);  
}

int timecalc(){
  return 500;
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
  Serial.print("num = ");
  Serial.println(num);
  Serial.print("count = ");
  Serial.println(count);
}

int readpos(){
  int encoder0Pos;
 int encoder0PinALast = LOW;
 int PinAval = LOW;
  int n=0;
  int z=10;
   
   n = digitalRead(encoder0PinA);
   z=digitalRead(encoder0PinZ);
   //Serial.println(z);
   if (z == LOW){
      encoder0Pos=0;
      Serial.println("RESET TO 0");
   }
   if ((encoder0PinALast == LOW) && (n == HIGH)) {
     if (digitalRead(encoder0PinB) == LOW) {
       //if(encoder0Pos<999){
       encoder0Pos++;
       //}
       //else{
       //encoder0Pos=0;
       //}
       
       
     }
     else {
     //  if(encoder0Pos>0){
       encoder0Pos--;
       //}
      // else{
       //encoder0Pos=999;
       //}
      
     }
     Serial.println (encoder0Pos);
   } 
   encoder0PinALast = n;
   return encoder0Pos;
}

void loop() {
  int current_position;
  int done=0;
  int msel=0;
  int temp=0;
  int tx=1;
  int dl=0;
  
// listen for BLE peripherals to connect:
  BLECentral central = blePeripheral.central();

  current_position=readpos();

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
            tx=tx*16;
            if(dl>=3){
              done=1;
              dl=0;
            }
          }
        }    
      }
      else{
        newpos=newpos*3200/3600;
        Serial.print("xpos old = ");
        Serial.println(xpos);
        Serial.print("newpos = ");
        Serial.println(newpos);
        //add code to update here
        posupdate(msel,newpos,xpos,0);
        
        time=timecalc();  

        CurieTimerOne.start(time,&timedBlinkIsr);
        
        xpos=newpos;
        newpos=0;
        done=0;
        msel=0;
        tx=1;
             

        Serial.print("xpos new = ");
        Serial.println(xpos);
        
      }
    }

    // when the central disconnects, print it out:
    Serial.print(F("Disconnected from central: "));
    Serial.println(central.address());
  }
}

