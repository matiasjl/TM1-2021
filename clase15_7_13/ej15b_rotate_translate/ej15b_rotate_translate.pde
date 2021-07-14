/* Grados a radianes 
  de 0-359 a 0-PI*2
  
  180º = PI
  360º = PI*2
  90º = PI/2 = 1.5707964
  45º = PI/4

*/

void setup(){
  size( 400, 400 );
  rectMode( CENTER );
}

void draw(){
  background( 255 );
  
  translate( mouseX, mouseY ); //traslada el Origen de Coordenadas (originario en 0, 0 );
  //rect( 0, 0, width, height );  //visualización del lienzo;
  //rotate( PI/4 );
  
  rotate( radians(frameCount) );  //roto el LIENZO, no la figura
  rect( 0, 0, 150, 150 );
  rotate( radians(frameCount)+radians(30) );  //roto el LIENZO, no la figura
  rect( 0, 0, 120, 120 );
  rotate( radians(frameCount)+radians(60) );  //roto el LIENZO, no la figura
  rect( 0, 0, 90, 90 );

}
