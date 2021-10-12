/* ---OBJETOS con Arreglos---
 */

Copo u[];
int numB;
PImage fondo;
void setup() {
  size( 800, 400 );
  
  numB = 300;
  
  u = new Copo[numB];
  for (int i = 0; i < numB; i++){
  u[i] = new Copo();
  }
  fondo = loadImage("unnamed.jpg");
  fondo.resize(width, height);
}

void draw() {
  background(fondo);

  for (int i = 0; i < numB; i++){
  u[i].update();

  u[i].draw();
  }
}
