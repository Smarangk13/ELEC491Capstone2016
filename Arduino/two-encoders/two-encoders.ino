
bool aval=0;
 int encoder0PinA = 3;
 int encoder0PinB = 4;
 int encoder0PinZ = 2;
  int encoder1PinA = 6;
 int encoder1PinB = 7;
 int encoder1PinZ = 5;
 int pos0=0,pos1=0;
 int pos0last=0,pos1last=0;

 void setup() { 
   pinMode (encoder0PinA,INPUT);
   pinMode (encoder0PinB,INPUT);
   attachInterrupt(digitalPinToInterrupt(encoder0PinB),bhigh,RISING);
   pinMode (encoder0PinZ,INPUT);
   attachInterrupt(digitalPinToInterrupt(encoder0PinZ),zero,LOW);
   pinMode (encoder1PinA,INPUT);
   pinMode (encoder1PinB,INPUT);
   attachInterrupt(digitalPinToInterrupt(encoder1PinB),bhigh1,RISING);
   pinMode (encoder1PinZ,INPUT);
   attachInterrupt(digitalPinToInterrupt(encoder1PinZ),zero1,HIGH);
   Serial.begin (115200);
 } 

 void loop() {
  // put your main code here, to run repeatedly:
   if(pos0last!=pos0){
    Serial.print("POS0=");
    Serial.println(pos0);
    pos0last=pos0; 
   }
   if(pos1last!=pos1){
    Serial.print("POS1=");
    Serial.println(pos1);
    pos1last=pos1; 
   }
}

void bhigh1(){

 aval=digitalRead(encoder1PinA);
  //if(bval==HIGH){
  if(aval==HIGH){
    pos1++;
  }
  else{
    pos1--;
  }
  //}
}

void zero1(){
  pos1=0;
}

void bhigh(){

 aval=digitalRead(encoder0PinA);
  //if(bval==HIGH){
  if(aval==HIGH){
    pos0++;
  }
  else{
    pos0--;
  }
  //}
}

void zero(){
  pos0=0;
}
 
