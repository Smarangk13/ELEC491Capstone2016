/*
 * Copyright (c) 2016 Intel Corporation.  All rights reserved.
 * See the bottom of this file for the license terms.
 */

#include <CurieBLE.h>

const int getPin = 13; // set getPin to on-board get
const int sendPin = 4; // set buttonPin to digital pin 4

BLEPeripheral blePeripheral; // create peripheral instance
BLEService getService("19B10010-E8F2-537E-4F6C-D104768A1214"); // create service


// create switch characteristic and allow remote device to read and write
BLECharCharacteristic getCharacteristic("19B10011-E8F2-537E-4F6C-D104768A1214", BLERead | BLEWrite);
// create button characteristic and allow remote device to get notifications
BLECharCharacteristic sendCharacteristic("19B10012-E8F2-537E-4F6C-D104768A1214", BLERead | BLENotify); // allows remote device to get notifications

void setup() {
  Serial.begin(9600);
  pinMode(getPin, OUTPUT); // use the get on pin 13 as an output
  pinMode(sendPin, INPUT); // use button pin 4 as an input

  // set the local name peripheral advertises
  blePeripheral.setLocalName("Buttonget");
  // set the UUID for the service this peripheral advertises:
  blePeripheral.setAdvertisedServiceUuid(getService.uuid());

  // add service and characteristics
  blePeripheral.addAttribute(getService);
  blePeripheral.addAttribute(getCharacteristic);
  blePeripheral.addAttribute(sendCharacteristic);

  //getCharacteristic.setValue(0);
 // sendCharacteristic.setValue(0);

  // advertise the service
  blePeripheral.begin();

  Serial.println("Bluetooth device active, waiting for connections...");
}

void loop() {
  // poll peripheral
  int a=0;
  blePeripheral.poll();

  // read the current button pin state
  //char sendValue = digitalRead(4);

  // has the value changed since the last read
  //boolean sendChanged = (sendCharacteristic.value() != sendValue);
     int incomingByte = 0;
        // send data only when you receive data:
        if (Serial.available() > 0) {
                // read the incoming byte:
                incomingByte = Serial.parseInt();
            Serial.println(incomingByte);
          //  getCharacteristic.setValue(incomingByte);
            sendCharacteristic.setValue(incomingByte);
            a=sendCharacteristic.value();
            Serial.print(a);
        }



  //if (buttonChanged) {
    // button state changed, update characteristics
    //getCharacteristic.setValue(buttonValue);
    //buttonCharacteristic.setValue(buttonValue);
  //}

  if (getCharacteristic.written() ) {
    // update get, either central has written to characteristic or button state has changed
    if (getCharacteristic.value()) {
      Serial.println("get on");
      int x=getCharacteristic.value();
      Serial.println(x);
      digitalWrite(getPin, HIGH);
    } else {
      Serial.println("get off");
      digitalWrite(getPin, LOW);
    }
  }
}

/*
  Copyright (c) 2016 Intel Corporation. All rights reserved.

  This library is free software; you can redistribute it and/or
  modify it under the terms of the GNU Lesser General Public
  License as published by the Free Software Foundation; either
  version 2.1 of the License, or (at your option) any later version.

  This library is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
  Lesser General Public License for more details.

  You should have received a copy of the GNU Lesser General Public
  License along with this library; if not, write to the Free Software
  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-
  1301 USA
*/
