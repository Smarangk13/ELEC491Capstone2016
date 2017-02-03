/*
  Sketch: Timer1Interrupt.ino

  This sketch demonstrates the usage of the Curie Timer One Library.
  It uses timer-1 to blink the onboard LED, pin 13, at different
  intervals (speed) in four steps.

  You can see the time interval and the number of interrupt counted
  in 10 seconds if you keep serial logging active, but this may require
  a MASTER_RESET to reprogram the board. 

  Blinking of the LED will start only when you open the  Serial Monitor
  unless you comment the "#define SERIAL_PORT_LOG_ENABLE 1"; don't
  forget to uncomment "CurieTimerOne.restart(time);"

  created by Intel
  Modified 14 March 2016
  by Simone Majocchi

  This example code is in the public domain.  
*/

#include "CurieTimerOne.h"

// Comment the following statement to disable logging on serial port.
#define SERIAL_PORT_LOG_ENABLE 1

const int oneSecInUsec = 1000000;   // A second in mirco second unit.
bool toggle = 0;                    // The LED status toggle
int time;                           // the variable used to set the Timer
int num;
int count=0;

void timedBlinkIsr()   // callback function when interrupt is asserted
{
  if (num>count){
    digitalWrite(13, toggle);
    toggle = !toggle;  // use NOT operator to invert toggle value
    count++;
  }
}

void setup() {

#ifdef SERIAL_PORT_LOG_ENABLE
  Serial.begin(115200);  //  initialize Serial communication
  while (!Serial);       //  wait for the serial monitor to open
#endif

  // Initialize pin 13 as an output - onboard LED.
  pinMode(13, OUTPUT);
}

void loop() {
Serial.println(count);
if (Serial.available() > 0) {

    // We set a blink rate of 1000000, 500000, 250000, 125000 microseconds
    time = Serial.parseInt(); // time is used to toggle the LED is divided by i
    num=10;
    CurieTimerOne.start(time, &timedBlinkIsr);  // set timer and callback
    
#ifdef SERIAL_PORT_LOG_ENABLE
    Serial.print("The blink period: ");
    Serial.println(time);
#endif

    //delay(10000);  // 10 seconds of delay, regularly 'interrupted' by the timer interrupt

#ifdef SERIAL_PORT_LOG_ENABLE
    Serial.print("Total number of ticks in 10 seconds: ");
    Serial.println(CurieTimerOne.rdRstTickCount());  // Reads and Resets tick count
    Serial.println("----");

    Serial.println("The tickcount is=");
    Serial.print(CurieTimerOne.readTickCount());
#endif
    // Uncomment the following line if the serial logging is disabled
    // CurieTimerOne.restart(time);   // Restarts Timer
  }
}
