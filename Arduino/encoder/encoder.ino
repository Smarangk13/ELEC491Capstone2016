

 int encoder0PinA = 5;
 int encoder0PinB = 6;
 int encoder0PinZ = 7;
 int angle;
 int emax=0;
 int encoder0Pos;
 int encoder0PinALast = LOW;
 int n = LOW;

 void setup() { 
   pinMode (encoder0PinA,INPUT);
   pinMode (encoder0PinB,INPUT);
   pinMode (encoder0PinZ,INPUT);
   Serial.begin (115200);
 } 

 void loop() {
  int z=10; 
   n = digitalRead(encoder0PinA);
   z=digitalRead(encoder0PinZ);
   //Serial.println(z);
   if (z == HIGH){
      encoder0Pos=0;
      Serial.println("RESET TO 0");
   }

   if ((encoder0PinALast == LOW) && (n == HIGH)) {
      if (digitalRead(encoder0PinB) == LOW) {
        encoder0Pos++;
        
      } else {
        encoder0Pos--;
        
      }

     angle=(encoder0Pos*360)/1024;
     Serial.print("encoderpos=  ");
     Serial.println (encoder0Pos);
     Serial.print("angle = ");
     Serial.println (angle);
   } 
   encoder0PinALast = n;
 } 
