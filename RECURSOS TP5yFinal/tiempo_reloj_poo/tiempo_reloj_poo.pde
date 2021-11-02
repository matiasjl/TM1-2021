/*
RECURSOS VIDEOJUEGOS | TP_FINAL
MATIAS_JL | TMM1 | FBA | UNLP | 2016
http://colaboratorio3.org/
*/

Juego j;

void setup(){
  size(400,400);
  textSize(42);
  
  j = new Juego(10000);
}

void draw(){
  background(0);
  j.play();
}