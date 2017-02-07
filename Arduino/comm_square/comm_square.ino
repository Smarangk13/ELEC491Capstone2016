/*

 * Copyright (c) 2016 Intel Corporation.  All rights reserved.

 * See the bottom of this file for the license terms.

 */



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



const int dir = 12; // pin to use for the LED



void timedBlinkIsr()   // callback function when interrupt is asserted

{

  num*=2;

  if (num>=count){

    digitalWrite(13, toggle);

    toggle = !toggle;  // use NOT operator to invert toggle value

    count++;

  }

}



void setup() {

  Serial.begin(11520);



  // set LED pin to output mode

  pinMode(dir, OUTPUT);



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

}



int posdiff(int a, int b){

  if (a>b){

    motor_direction=0;

    return (a-b);

  }

  motor_direction=1;

  return (b-a);  

}



int timecalc(){

  return 700000;

}



void posupdate(int msel,int np,int xp,int yp){

  //ADD update code

  int dir=0;

  int mp;

  Serial.print("Selected motor = ");

  Serial.println(msel);

  mp = (msel==1)?yp:xp;

  num=posdiff(mp,msel);

  count=0;

  Serial.print("num = ");

  Serial.println(num);

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

        Serial.print("newpos = ");

        Serial.println(newpos);

        //add code to update here

        CurieTimerOne.start(time,&timedBlinkIsr);

        posupdate(msel,newpos,xpos,0);



        time=timecalc();

        

        xpos=newpos;

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



/*

   Copyright (c) 2016 Intel Corporation.  All rights reserved.



   This library is free software; you can redistribute it and/or

   modify it under the terms of the GNU Lesser General Public

   License as published by the Free Software Foundation; either

   version 2.1 of the License, or (at your option) any later version.



   This library is distributed in the hope that it will be useful,

   but WITHOUT ANY WARRANTY; without even the implied warranty of

   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU

   Lesser General Public License for more details.



   You should have received a copy of the GNU Lesser General Public

   License along with this library; if not, write to the Free Software

   Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA

*/
