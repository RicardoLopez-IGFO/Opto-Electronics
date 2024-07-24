#include "Adafruit_VL53L0X.h"
#include <LiquidCrystal.h>

Adafruit_VL53L0X lox = Adafruit_VL53L0X();

const int rs = 12, en = 11, d4 = 5, d5 = 4, d6 = 3, d7 = 2;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);
const int Led=10;

void setup() {
  Serial.begin(9600);
 
  
  lcd.print("Hello Class");
 
  // wait until serial port opens for native USB devices
  while (! Serial) {
    delay(1);
  }
 
  Serial.println("Adafruit VL53L0X test");
  if (!lox.begin()) {
    Serial.println(F("Failed to boot VL53L0X"));
    while(1);
  }
  // power
  Serial.println(F("VL53L0X API Simple Ranging example\n\n"));
}


void loop() {
  VL53L0X_RangingMeasurementData_t measure;
   
  Serial.print("Reading a measurement... ");
  lox.rangingTest(&measure, false); // pass in 'true' to get debug data printout!

  if (measure.RangeStatus != 4) {  // phase failures have incorrect data
     float Cm=(measure.RangeMilliMeter)/10.01;
    Serial.print("Distance (cm): "); Serial.println(Cm);
   
    lcd.cursor(); lcd.print("Cm:");  lcd.setCursor(5,1); lcd.print(Cm);
    int medida = Cm;
 
  if(medida < 10) {
    digitalWrite(Led, HIGH);
    }
 
  else {
    digitalWrite(Led, LOW);
    // delay (10);
    }
 
 
 
 
 
  } else {
    Serial.println(" out of range ");
  }
   
  delay(100);
}
