
// CARGA Y VISUALIZACIÓN DE IMAGENES

// 1)
PImage miPelota;

float px, py, tam;

void setup(){
  size( 400, 400 );
  frameRate( 10 );    //probar distintos numeros para ver el efecto de 'PERSISTENCIA VISUAL' (googlear si quieren)
  
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
  rect( ((frameCount%160)*4)-110, height/2, 200, 200 );  //DEDUCIR QUE PASA ACA PARA PODER 'reciclar' EL MOVIMIENTO DEL BORDE
  
  //3)
  image( miPelota, px, py, tam, tam );
  
  //TAMAÑO
  //ultimos dos parametros son para cambiar tamaño ancho y alto
  //image( miPelota, 200, 200, width, height );
  //image( miPelota, 200, 200, miPelota.width/2, miPelota.height/2 );
  //image( miPelota, 200, 200, miPelota.width*1.5, miPelota.height*1.5 );

  println( random(width) );
  px = random(width);
  py = 200;
  tam = random( 50, 100 );
  
}
