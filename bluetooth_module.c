int LED = 13;
int LED2 = 12;
int LED3 = 11;
char input;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);                 // set baud rate to 9600
  pinMode(LED, OUTPUT);               // set the LED pin to output
  pinMode(LED2, OUTPUT);               // set the LED pin to output
  pinMode(LED3, OUTPUT);               // set the LED pin to output
  Serial.println(">>START<<");        // set output
}

void loop() {
  // put your main code here, to run repeatedly:
  // checks if the serial is port is available and data is recieved
  if(Serial.available()>0)  
    {  
      // read data into input
      input= Serial.read();  
      if(input=='1')  
      {  
        // if data read in is 1 print "ON" and turn on the LED
        Serial.println("ON");  
        digitalWrite(LED, HIGH);  
        delay(2000);
        digitalWrite(LED, LOW);  
      }  
      else if(input=='0')  
      {  
        Serial.println("OFF");  
        digitalWrite(LED2, HIGH);  
        delay(2000);  
      }  
      else  
      {  
        Serial.println("NO INPUT");  
        Serial.println(input);  
        digitalWrite(LED3, HIGH);
      }  
    }
}
