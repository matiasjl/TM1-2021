/*
RECURSOS VIDEOJUEGOS | TP_FINAL
MATIAS_JL | TMM1 | FBA | UNLP | 2016
http://colaboratorio3.org/
*/

Saltarin s;

void setup(){
  size(400,400);
  s = new Saltarin(100,300);
}

void draw(){
  background(255);
  s.dibujar();
  s.saltar();
}

void keyPressed(){
  s.teclas();
}