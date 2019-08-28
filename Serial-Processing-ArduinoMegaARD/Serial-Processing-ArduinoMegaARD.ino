
//ENCIENDE EL LED CUANDO LE LLEGA UNA b Y LO APAGA CUANDO RECIBE UNA a.
//UTILIZANDO EL MONITOR SERIE Y ENVIANDO LAS LETRAS, FUNCIONA
//EN ARDUINO UNO TODO BIEN

//PARA UTILIZAR CON ARDUINO MEGA PONER UN delay(5000) CUANDO PROCESSING CONECTA CON ADUINO:
//En processing:
//         myPort = new Serial(this, portName, 9600);
//         delay(5000);

int option;
int led = 13;
 
void setup(){
  Serial.begin(9600);
  pinMode(led, OUTPUT); 
}
 
void loop(){
  //si existe datos disponibles los leemos
  if (Serial.available()>0){
    //leemos la opcion enviada
    option=Serial.read();
    if(option=='a') {
      digitalWrite(led, LOW);
      Serial.println("OFF");
    }
    if(option=='b') {
      digitalWrite(led, HIGH);
      Serial.println("ON");
    }
  }
}
