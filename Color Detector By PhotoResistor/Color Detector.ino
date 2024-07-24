String R="Rojo"; String G="Verde";  String B="Azul"; String Led="Ninguno";
String Hoja="Ninguno";
int opc=0;
int ldrPin=A1;
int ADC1=0;

void setup() {
 Serial.begin(9600);
}

void loop() {
  ADC1=analogRead(ldrPin);

if((ADC1>=670)&&(ADC1<=680))
{ opc=1;  Led=R; }
else if((ADC1>=535)&&(ADC1<=545))
{ opc=2;  Led=G; }
else if((ADC1>=650)&&(ADC1<=660))
{ opc=3;  Led=B; }
else {}
 
 ADC1=analogRead(ldrPin);

switch (opc){
case 1:   //ROJO
    if((ADC1>=853)&&(ADC1<=863)) { Hoja="Rojo";}
    else if((ADC1>=948)&&(ADC1<=968)) { Hoja="Verde";}
    else if((ADC1>=996)&&(ADC1<=1004)) { Hoja="Azul";}
    else if((ADC1>=810)&&(ADC1<=820)) { Hoja="Amarillo";}
    else if((ADC1>=790)&&(ADC1<=805)) { Hoja="Rosa";}
    break;
case 2:   //VERDE
    if((ADC1>=987)&&(ADC1<=990)) { Hoja="Rojo";}
    else if((ADC1>=770)&&(ADC1<=810)) { Hoja="Verde";}
    else if((ADC1>=820)&&(ADC1<=847)) { Hoja="Azul";}
    else if((ADC1>=800)&&(ADC1<=820)) { Hoja="Amarillo";}
    else if((ADC1>=790)&&(ADC1<=816)) { Hoja="Rosa";}
    break;
case 3:   //AZUL
    if((ADC1>=990)&&(ADC1<=994)) { Hoja="Rojo";}
    else if((ADC1>=866)&&(ADC1<=886)) { Hoja="Verde";}
    else if((ADC1>=820)&&(ADC1<=840)) { Hoja="Azul";}
    else if((ADC1>=978)&&(ADC1<=988)) { Hoja="Amarillo";}
    else if((ADC1>=730)&&(ADC1<=750)) { Hoja="Rosa";}
    break;
default:
Hoja="Ninguno";
break; 


} 

Serial.println("Color LED:\t" + Led + "\nColor Hoja:\t" + Hoja + "\n");
delay(1000);

 Hoja="Ninguno"; 
}
