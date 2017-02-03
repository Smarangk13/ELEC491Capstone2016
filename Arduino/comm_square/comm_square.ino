/*
 * Copyright (c) 2016 Intel Corporation.  All rights reserved.
 * See the bottom of this file for the license terms.
 */

#include <CurieBLE.h>
#include "CurieTimerOne.h"

const int oneSecInUsec = 1000000;   // A second in mirco second unit.
bool toggle = 0;                    // The LED status toggle
int time;                           // the variable used to set the Timer
int num;
int count=0;
int xpos=0;
int newpos;

BLEPeripheral blePeripheral;  // BLE Peripheral Device (the board you're programming)
BLEService ledService("19B10000-E8F2-537E-4F6C-D104768A1214"); // BLE LED Service

// BLE LED Switch Characteristic - custom 128-bit UUID, read and writable by central
BLEUnsignedCharCharacteristic switchCharacteristic("19B10001-E8F2-537E-4F6C-D104768A1214", BLERead | BLEWrite);

const int dir = 12; // pin to use for the LED

void timedBlinkIsr()   // callback function when interrupt is asserted
{
  if (num>count){
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

void posupdate(int msel,int np,int xp,int yp){
  //ADD update code
  Serial.print("Selected motor=");
  Serial.println(msel);
}

void loop() {
  int temp=0;
  int msel=0;
  int tx=1;
  int dl=1;
  int done=0;
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
            Serial.print("recieved");
            Serial.println(temp);
            dl++;
            newpos+=temp*tx;
            tx=tx*16;
            if(dl>=3){
              done=1;
              dl=1;
            }
          }
        }    
      }
      else{
        tx=1;
        msel=0;
        Serial.print("newpos=");
        Serial.println(newpos);
        //add code to update here
        posupdate(msel,newpos,xpos,0);
        
        xpos=newpos;
        newpos=0;
        done=0;
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
