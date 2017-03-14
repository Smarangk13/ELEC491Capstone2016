//Milestone 4 returning data
//motor control for 2 motors

#include <CurieBLE.h>
#include "CurieTimerOne.h"

//Ble connected
bool bluetooth_connected=false;

//Motor variables
int stepdegree=1000;                //Steps from the stepper motor per degree
const int oneSecInUsec = 1000000;   // A second in mirco second unit.
bool toggle = 0;                    // The LED status toggle
int time;                           // the variable used to set the Timer
float pan_Gearratio=2;
float tilt_Gearratio=1;

//Number of steps needed(used inn timer)
int num;
int numhigh;
int desired_Pan_Value=1600;
int Pan_high=1600;
int desired_Tilt_Value=800;
int Tilt_high=800;
int tolerance=100;

//Positions
int current_xPos;
int current_yPos;
int newpos=-20;

//ENCODER VARIABLES
int encoder0zeros={0,1024,2048,3072,4096}
int encoder0PinA = 3;
bool aval=0;
int encoder0PinB = 4;
int encoder0PinZ = 5;
int encoder0pos=70;
int encodedAngle=0;

//IR SENSOR
int sensor=1;
int l1=6;
int l2=7;

BLEPeripheral blePeripheral;  // BLE Peripheral Device (the board you're programming)
BLEService ledService("19B10010-E8F2-537E-4F6C-D104768A1214"); // BLE LED Service

// BLE LED Switch Characteristic - custom 128-bit UUID, read and writable by central
BLEUnsignedCharCharacteristic switchCharacteristic("19B10001-E8F2-537E-4F6C-D104768A1214", BLERead | BLEWrite);

//Pin configurations
const int motor1 = 13;
const int motor2 = 11;
const int dir = 12; // pin to use for the direction
bool motor_dir=1;
int sel=13;

void timedBlinkIsr()   // callback function when interrupt is asserted
{
 //encodedAngle=abs(encoder0pos*3200/1024)+10;
  if (desired_Pan_Value>encoder0pos){
    digitalWrite(sel, toggle);
    motor_dir=0;
    digitalWrite(dir, motor_dir);
    toggle = !toggle;  // use NOT operator to invert toggle value
  }
 else if(numhigh<encoder0pos){
  digitalWrite(sel, toggle);
    motor_dir=1;
    digitalWrite(dir, motor_dir);
    toggle = !toggle;  // use NOT operator to invert toggle value
  }
  
  if (desired_Tilr_Value>encodedAngle){
    digitalWrite(sel, toggle);
    motor_dir=0;
    digitalWrite(dir, motor_dir);
    toggle = !toggle;  // use NOT operator to invert toggle value
  }
 else if(numhigh<encodedAngle){
  digitalWrite(sel, toggle);
    motor_dir=1;
    digitalWrite(dir, motor_dir);
    toggle = !toggle;  // use NOT operator to invert toggle value
   }
}

void setup() {
  Serial.begin(11520);
  // set LED pin to output mode
  pinMode(motor1, OUTPUT);
  pinMode(dir, OUTPUT);
  pinMode(motor2, OUTPUT);

  pinMode (encoder0PinA,INPUT);
  pinMode (encoder0PinB,INPUT);//PULLUP??
  attachInterrupt(digitalPinToInterrupt(encoder0PinB),bhigh,RISING);
  pinMode (encoder0PinZ,INPUT);
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

  absolute_Position_Read();
}

int posdiff(int a, int b){
  if (a>b){
    digitalWrite(dir,HIGH);
    motor_dir=HIGH;
    return (a-b);
  }
  digitalWrite(dir,LOW);
  motor_dir=LOW;
  return (b-a);  
}

int timecalc(){
  return 500;
}

void absolute_Position_Read(){
  current_xPos=150;//in degrees
  encoder0pos=current_xPos*pan_Gearratio*1024/360;
  current_yPos=150;//in degrees
  encoder1pos=current_yPos*tilt_Gearratio*1024/360;
}

void loop() {
  int done=1;
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
      irread();
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
        num=newpos*3200/3600;
        if(msel==1){
          desired_Pan_Value=num*pan_Gearratio;
          Pan_high=desired_Pan_Value+tolerance;
        }
        if(msel==2){
          desired_Tilt_Value=num*tilt_Gearratio;
          Tilt_high=desired_Tilt_Value+tolerance;
        }
        
        time=timecalc();  
        CurieTimerOne.start(time,&timedBlinkIsr);
        
        newpos=0;
        done=0;
        msel=0;
        tx=1;
      
      }
    }

    // when the central disconnects, print it out:
    Serial.print(F("Disconnected from central: "));
    Serial.println(central.address());
  }
}


void bhigh1(){

 aval=digitalRead(encoder1PinA);
  //if(bval==HIGH){
  if(aval==HIGH){
    encoder1pos++;
  }
  else{
    encoder1pos--;
  }
  //}
}


void bhigh0(){
 aval=digitalRead(encoder0PinA);
  if(aval==HIGH){
    encoder0pos++;
  }
  else{
    encoder0pos--;
  }
}

void zero0(){
  int near=encoder0zeros[0];
  int i=0;
  for (i=0;i<5;i++){
    //goto nearest 0 pos
    if((encoder0pos-encoder0zeros[i])<(encoder0pos-near)){
      near=encoder0zeros[i]
    }
 }
 encoder0pos=near;
}

void irread(){
  float cm;  
  float n= analogRead(sensor);
  cm=10650.08*pow(n,-0.935)-10;
  if(cm>80){
    digitalWrite(l1,LOW);
    digitalWrite(l2,LOW);
  }
  
  else if(cm>35){
    digitalWrite(l1,HIGH);
    digitalWrite(l2,HIGH);
  }

  else if (cm>10){
    digitalWrite(l1,HIGH);
    digitalWrite(l1,LOW);
  }  
}

