//Milestone 4 returning data
//motor control for 2 motors

#include <CurieBLE.h>
#include "CurieTimerOne.h"

/*
  Blutooth Send Values
  0-Ignore
  1-Recieved data
  2- Done movement
  10-STUCK!!
*/
// Ble connected
bool bluetooth_connected = false;


//Motor variables
const int motor0  =  10;              //Movement pin
const int dir0  = 11;                 //Direction pin
const int motor1  =  12;
const int dir1  =  13; 

//Gear ratios
float pan_Gearratio = 2;
float tilt_Gearratio = 1;

//Timer variables
const int oneSecInUsec  =  1000000;   // A second in mirco second unit.
bool toggle  =  0;                    // The LED status toggle
int time;                           // the variable used to set the Timer

//Number of steps needed(used in timer)
int num;
int desired_Pan_Value = 1600;
int Pan_high = 1600;
int desired_Tilt_Value = 800;
int Tilt_high = 800;
int tolerance = 100;

//Positions
int current_xPos;
int current_yPos;
int newpos = 20;

//ENCODER VARIABLES
bool aval = 0;
int encoder0PinZ  =  2;
int encoder0PinA  =  3;
int encoder0PinB  =  4;
int encoder0pos = 70;
int offset0 = 0;

int encoder1PinA  =  5;
int encoder1PinB  =  6;
int encoder1PinZ  =  7;
int encoder1pos = 70;
int offset1 = 0;

//Potentiometers
int potentiometer0 = 0;
int potentiometer1 = 1;
int potentiometer0offset = 50;
int potentiometer1offset = 50;
int readoffset0 = 200;
int readoffset1 = 200;

//IR SENSOR
int irsensor = 2;
int l1 = 6;
int l2 = 7;

//Movement counter
unsigned int movecount = 20;
int timeval = 1000;
unsigned int tdelay = 0;

//Bluetooth Setup
BLEPeripheral blePeripheral;  // BLE Peripheral Device (the board you're programming)
BLEService ledService("19B10010-E8F2-537E-4F6C-D104768A1214"); // BLE LED Service

// BLE LED Switch Characteristic - custom 128-bit UUID, read and writable by central
BLEUnsignedCharCharacteristic switchCharacteristic("19B10001-E8F2-537E-4F6C-D104768A1214", BLERead | BLEWrite);
//BLECharCharacteristic sendCharacteristic("19B10012-E8F2-537E-4F6C-D104768A1214", BLERead | BLENotify); // allows remote device to get notifications

void setup() {
  Serial.begin(11520);

  // set pins 
  pinMode(motor0, OUTPUT);
  pinMode(dir0, OUTPUT);
  pinMode(motor1, OUTPUT);
  pinMode(dir1, OUTPUT);

  //ENCODER0
  pinMode (encoder0PinA,INPUT);
  pinMode (encoder0PinB,INPUT);//PULLUP??
  attachInterrupt(digitalPinToInterrupt(encoder0PinB),bhigh0,RISING);
  pinMode (encoder0PinZ,INPUT);
  attachInterrupt(digitalPinToInterrupt(encoder0PinZ),zero0,LOW);
/*
  //ENCODER1
  pinMode (encoder1PinA,INPUT);
  pinMode (encoder1PinB,INPUT);
  attachInterrupt(digitalPinToInterrupt(encoder1PinB),bhigh1,RISING);
  pinMode (encoder1PinZ,INPUT);
  attachInterrupt(digitalPinToInterrupt(encoder1PinZ),zero1,HIGH);
*/
  //Analog in-Potentiometer + ir sensor
  pinMode(A0,INPUT);
  pinMode(A1,INPUT);
  pinMode(A2,INPUT);
  
  // set advertised local name and service UUID:
  blePeripheral.setLocalName("Projector Mount");
  blePeripheral.setAdvertisedServiceUuid(ledService.uuid());

 // add service and characteristic:
  blePeripheral.addAttribute(ledService);
  //blePeripheral.addAttribute(sendCharacteristic);
  blePeripheral.addAttribute(switchCharacteristic);
  // set the initial value for the characeristic:
  switchCharacteristic.setValue(0);
  //sendCharacteristic.setValue(0);

  // begin advertising BLE service:
  blePeripheral.begin();

  //Read initial position
  absolute_Position_Read();
}

void motorstep(int motor_select,int dir_select,bool dir){
  movecount++;
  digitalWrite(dir_select,dir);
  digitalWrite(motor_select,toggle);
}

void timedBlinkIsr()   // callback function when interrupt is asserted
{
  toggle = !toggle;
  if (desired_Pan_Value>encoder0pos){
    motorstep(motor0,dir0,0);
  }
  else if(Pan_high<encoder0pos){
    motorstep(motor0,dir0,1);
  }
 
  if (desired_Tilt_Value>encoder1pos){
    motorstep(motor1,dir1,0);
  }
  else if(Tilt_high<encoder1pos){
    motorstep(motor1,dir1,1);
  }
   
  else if((desired_Pan_Value<encoder0pos)and (Pan_high>encoder0pos)){
    movecount = 0;
  }
}

int timecalc(){
  int tmin = 1000;
  int tmax = 100;
  tdelay++;
  if (((desired_Pan_Value+desired_Tilt_Value)-(encoder0pos+encoder1pos))>10000){
    timeval+= tdelay/1000;
  }
  else if(((desired_Pan_Value+desired_Tilt_Value)-(encoder0pos+encoder1pos))<5000){
    timeval-= tdelay/1000;
  }
  timeval = constrain(timeval,tmax,tmin);
  //return timeval;
  return 500;
}

void absolute_Position_Read(){
  //read angle from potentiometers then write to encoder pos
  //read_absolute_pos();
  current_xPos = 150;//in degrees
  current_yPos = 150;//in degrees

  //Convert to encoder data
  encoder0pos = current_xPos * 1024/360;
  encoder0pos*=  pan_Gearratio;
  encoder1pos  =  current_yPos * 1024/360;
  encoder1pos*= tilt_Gearratio;
}

void loop() {
  int recieved_new_pos = 0;
  int recieved_byte1 = 0;
  /*
    IF Recieved byte 1
    0- Do nothing
    1- Motor 1
    2- Motor 2
    3- Motor 3 (NOT IMPLEMENTED)
    11- Motor 1 continous step forward
    12- Motor 1 Continous step reverse
    13
    19- Motor 1 stop
    21- Motor 2 continous step forward
    22- Motor 2 continous step reverse
    23- Motor 2 stop
    50+ - Patterns
  */
  int temp = 0;
  int tx = 1;
  int data_length = 0;
  
  // listen for BLE peripherals to connect:
  BLECentral central = blePeripheral.central();
  
  // if a central is connected to peripheral:
  if (central) {
    Serial.print("Connected to central: ");
    Serial.println(central.address());

    // while the central is still connected to peripheral:
    while (central.connected()) {
      irread();
      //time = timecalc();  
      //CurieTimerOne.start(time,&timedBlinkIsr);

      //Read incoming data  
      if (recieved_new_pos == 0) {
        //if data is being written
        if(switchCharacteristic.written()){
          //See incoming data and decide what to do
          //Refer recieved_byte1
          if((recieved_byte1 == 0)or ((recieved_byte1 > 5))){
            recieved_byte1 = switchCharacteristic.value();
          }

          //If motor 1 or 2 has been selected Reconstruct bytes as position information
          else if(recieved_byte1 < 5){
            temp = switchCharacteristic.value();
            data_length++;
            newpos+= temp*tx;
            tx = tx*128;
            if(data_length >= 2){
              recieved_new_pos = 1;
              data_length = 0;
              //sendCharacteristic.setValue(1);
            }
          }
        }

        //if no data is written
        else{
          if(recieved_byte1>70){
          Serial.println(recieved_byte1);
          }
        switch(recieved_byte1){
          case 11:
            toggle!=toggle;
            motorstep(motor0,dir0,0);
            break;

          case 12:
            toggle!=toggle;
            motorstep(motor0,dir0,1);
            break;

          case 19:
            recieved_byte1=0;
            break;
            
          case 21:
            toggle!=toggle;
            motorstep(motor1,dir1,0);
            break;

          case 22:
            toggle!=toggle;
            motorstep(motor1,dir1,1);
            break;

          case 50:
            desired_Pan_Value=30;
            Pan_high = desired_Pan_Value+tolerance;
            desired_Tilt_Value=40;
            Tilt_high = desired_Tilt_Value+tolerance;
            time = timecalc();  
            CurieTimerOne.start(time,&timedBlinkIsr);
            while(movecount){
            }
  
            desired_Pan_Value=30;
            Pan_high = desired_Pan_Value+tolerance;
            desired_Tilt_Value=40;
            Tilt_high = desired_Tilt_Value+tolerance;
            while(movecount){
            }

            desired_Pan_Value=30;
            Pan_high = desired_Pan_Value+tolerance;
            desired_Tilt_Value=40;
            Tilt_high = desired_Tilt_Value+tolerance;
            while(movecount){
            }
            
          default:
            bool a=0;
            //Serial.print("/nDEFAULT");
            //recieved_byte1 = 0;
          }
        }
      }

      //Recieved new position data- move to selected position
      else{
        num = newpos*3200/3600;
        if(recieved_byte1 == 1){
          desired_Pan_Value = num*pan_Gearratio;
          Pan_high = desired_Pan_Value+tolerance;
        }
        else if(recieved_byte1 == 2){
          desired_Tilt_Value = num*tilt_Gearratio;
          Tilt_high = desired_Tilt_Value+tolerance;
        }

        debugprints();
        
        time = timecalc();  
        CurieTimerOne.start(time,&timedBlinkIsr);
        //CurieTimerOne.rdRstTickCount()
        
        newpos = 0;
        recieved_new_pos = 0;
        recieved_byte1 = 0;
        tx = 1;
      
      }
      
      if(movecount == 0){
        //sendCharacteristic.setValue(2);
        movecount=1;
      }
      else if(movecount%100 == 0){
//        time = timecalc();  
//        CurieTimerOne.rdRstTickCount();
//        CurieTimerOne.start(time,&timedBlinkIsr);
      }
      else if(movecount>1000000){
        //sendCharacteristic.setValue(10);
      }
    }

    // when the central disconnects, print it out:
    Serial.print(F("Disconnected from central: "));
    Serial.println(central.address());
  }
}

void debugprints(){
  Serial.print("encoder0 = ");
  Serial.println(encoder0pos);
  Serial.print("encoder1 = ");
  Serial.println(encoder1pos);
  Serial.print("pan = ");
  Serial.println(desired_Pan_Value);
  Serial.println("  ");
}

void bhigh1(){

 aval = digitalRead(encoder1PinA);
  //if(bval == HIGH){
  if(aval == HIGH){
    encoder1pos++;
  }
  else{
    encoder1pos--;
  }
  //}
}

void zero1(){ 
 encoder1pos = encoder1pos/1024+offset0;
}

void bhigh0(){
 aval = digitalRead(encoder0PinA);
  if(aval == HIGH){
    encoder0pos++;
  }
  else{
    encoder0pos--;
  }
}

void zero0(){
 encoder0pos = encoder0pos/1024+offset0;
}

void read_absolute_pos(){
  int panread = analogRead(potentiometer0);
  int tiltread = analogRead(potentiometer1);  

  panread = constrain(panread - readoffset0,0,1024);
  tiltread = constrain(tiltread - readoffset1,0,1024);

  panread = panread*10*3600/1024;
  tiltread = tiltread*10*3600/1024;
  
  current_xPos = panread+potentiometer0offset;
  current_xPos = panread+potentiometer1offset;
}

void irread(){
  float cm;  
  float n =  analogRead(irsensor);
  cm = 10650.08*pow(n,-0.935)-10;
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

