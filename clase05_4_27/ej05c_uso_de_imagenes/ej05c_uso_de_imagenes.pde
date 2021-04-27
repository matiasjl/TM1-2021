
// CARGA Y VISUALIZACIÓN DE IMAGENES

// 1)
PImage miPelota;

void setup(){
  size( 400, 400 );
  
  //2)
  miPelota = loadImage( "futbol.png" );
  
  //IMPORTANTE: LA CARGA DE IMAGENES SIEMPRE EN EL SETUP
  
  rectMode( CENTER );
  imageMode( CENTER );
}

void draw(){
  background( 100 );
  
  //fill( 200 );
  noFill();
  stroke( 200 );
  strokeWeight( 20 );
  rect( width/2, height/2, 200, 200 );
  
  //3)
  image( miPelota, 200, 200 );
  
}
