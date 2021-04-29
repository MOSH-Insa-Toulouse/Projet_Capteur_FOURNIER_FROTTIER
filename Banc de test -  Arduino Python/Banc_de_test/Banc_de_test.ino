#include <Servo.h>
#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <SoftwareSerial.h>
#define PERIODE 200
#define rxPin 10 
#define txPin 11 
SoftwareSerial HC05(rxPin ,txPin); 

#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, -1);

int pos = 0;
float fake_pos = 0;
int pos_max = 0;
int pos_min = 0;
float res;
float tension;
float Vcc = 5.0;
float R5 = 10.0*pow(10,3);
float R1 = 100.0*pow(10,3);
float R2 = 1.0*pow(10,3);
float R3 = 100.0*pow(10,3);

Servo myservo;

 
void setup() {
  Serial.begin(9600);  
  myservo.attach(2);

  //HC05
  pinMode(rxPin, INPUT);
  pinMode(txPin, OUTPUT);
  HC05.begin(9600);
  
  //OLED
  if(!display.begin(SSD1306_SWITCHCAPVCC, 0x3C)) { // Address 0x3D for 128x64
    Serial.println(F("SSD1306 allocation failed"));
    for(;;);
  }
  delay(2000);
  display.clearDisplay();
  display.println("Init., pls wait.");
  display.display(); 
  delay(2000);
  LED();
}


void measure(){
  fake_pos = pos;
  delay(50); 
  Serial.print(fake_pos); 
  Serial.print(" ");                                   
  Serial.println(analogRead(A0));
  delay(50); 
  Serial.print(fake_pos); 
  Serial.print(" ");                                   
  Serial.println(analogRead(A0));
  delay(50); 
  Serial.print(fake_pos); 
  Serial.print(" ");                                   
  Serial.println(analogRead(A0));
}

void LED(){
  tension = analogRead(A0)/1024.0*5.0;
  res = abs(((R1/R2)*((R2+R3)*Vcc)/tension)-R1-R5);
  display.clearDisplay();
  display.setTextSize(1);
  display.setTextColor(WHITE);
  display.setCursor(0, 10);
  display.print("U : ");
  display.print(tension);
  display.println(" V");
  display.println(" ");
  display.print("R : ");
  display.print(res/1000.0/1000.0);
  display.print(" Mohm");
  display.display();
}

void BT(){
  HC05.write(map(analogRead(A0),0,1024,0,255));
}

void loop() {
  
  pos_max = 150;
  pos_min = 0;
  
   for (pos = pos_min; pos <= pos_max; pos += 1) { 
    myservo.write(pos);           
    measure();
    LED();
    BT();
  }
  
  for (pos = pos_max; pos >= pos_min; pos -= 1) { 
    myservo.write(pos);          
    measure();
    LED();
    BT();
  }
  
}
