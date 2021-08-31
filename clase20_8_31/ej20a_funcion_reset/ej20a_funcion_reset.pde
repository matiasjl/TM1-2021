
//funcion SIN parametros: resetear();

float x, y;

void setup() {
  size(400, 400);
  noFill();
  x = width / 2;
  y = height / 2;
}

void draw() {
  x += random(-5,5);
  y += random(-5,5);
  ellipse(x, y, 25, 25);
}

void keyPressed(){
  if( key == ' ' )
    resetear();
}

void resetear(){
  background( 200 );
  x = width / 2;
  y = height / 2;
}
