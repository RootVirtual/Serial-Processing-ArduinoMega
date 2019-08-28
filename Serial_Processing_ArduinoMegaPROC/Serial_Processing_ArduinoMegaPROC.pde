
//ENVÍA UNA b CUANDO SE PASA EL RATÓN POR EL CUADRADO
//Y ENVÍA UNA a CUANDO SE APARTA EL RATÓN DEL CUADRADO

//  ¡¡PARA COMUNICAR CON ARDUINO MEGA, ES NECESARIO UN delay de 5 seg cuando conecta!!
//                myPort = new Serial(this, portName, 9600);
//                delay(5000);


import processing.serial.*;

Serial myPort;
int val;

void setup() 
{
  size(200, 200);

  String portName = Serial.list()[1];
  myPort = new Serial(this, portName, 9600);
  delay(5000);
}

void draw() {
  background(255);
  if (mouseOverRect() == true) {  // If mouse is over square,
    fill(204);                    // change color and
    myPort.write('b');              // send an H to indicate mouse is over square
  } 
  else {                        // If mouse is not over square,
    fill(0);                      // change color and
    myPort.write('a');              // send an L otherwise
  }
  rect(50, 50, 100, 100);         // Draw a square
}

boolean mouseOverRect() { // Test if mouse is over square
  return ((mouseX >= 50) && (mouseX <= 150) && (mouseY >= 50) && (mouseY <= 150));
}

