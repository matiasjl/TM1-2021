// ANIMACION LINEAL: con variables de Processing 

void setup(){
  size( 600, 600 );
  rectMode( CENTER );  //CORNER, CENTER, CORNERS
  noStroke();
}

void draw(){
  //CONCLUSION_1: para evitar FEEDBACK utilizo background
  background( 255 );
  
  fill( frameCount, 0, 0 );
  circle( frameCount, 0, 600 );
  
  fill( 0, frameCount, 0 );
  circle( width-frameCount, height, width );
  
  fill( 0, 0, 255, 100 );
  rect( width/2, height/2, frameCount, frameCount );
  
  println( "contador: " + frameCount );

  //CONCLUSION_2: el draw se dibuja al terminar el ciclo (OSEA AQUI)
}
