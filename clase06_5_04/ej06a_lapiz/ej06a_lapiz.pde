
// M3: Animacional NO lineal
// Interactividad y Condionales

void setup(){
  size( 400, 600 );
  background( 255 );
  noFill();
  
  //frameRate( 5 );
}

void draw(){
  //point( mouseX, mouseY );
  circle( mouseX, mouseY, 15 );
  
  //LA SOLUCION AL PROBLEMA DE DIBUJAR COMO UN LAPIZ
  //dibujo una linea entre la posicion actual y la anterior del mouse
  line( mouseX, mouseY, pmouseX, pmouseY ); //p = previous
}
