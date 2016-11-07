#define LED 10
#define LED1 11
#define LED3 12
#include <SoftwareSerial.h>

// RX = 10
// TX = 11
SoftwareSerial mySerial(10,11);

char input;

void setup() {
  // put your setup code here, to run once:
  mySerial.begin(9600);                 // set baud rate to 9600
  pinMode(LED3, OUTPUT);               // set the LED pin to output
  mySerial.println(">>START<<");        // set output
}

void loop() {
  // put your main code here, to run repeatedly:
  // checks if the serial is port is available and data is recieved
  if(mySerial.available()>0)  
    {  
      // read data into input
      input= mySerial.read();  
      if(input=='1')  
      {  
        // if data read in is 1 print "ON" and turn on the LED
        mySerial.println("ON");  
        digitalWrite(LED3, HIGH);  
        delay(2000);
        digitalWrite(LED3, LOW);  
      }  
      else  
      {  
        mySerial.println("NO INPUT");  
        mySerial.println(input);  
      }  
    }
}
