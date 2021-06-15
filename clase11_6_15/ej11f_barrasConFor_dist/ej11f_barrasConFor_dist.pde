
int ancho;

void setup(){
  size( 400, 200 );
  colorMode( HSB, 200, 100, 100 );
  
  ancho = width / 10;  //=40
  
}

void draw(){
  background( 0 );
   
  for( int i = 0 ; i < 10 ; i++ ){
    float d = dist( i*40, 0, 180, 0 );  //distancia entre cada rect al origen
    fill( d, 100, 100 );
    rect(i*40, 0, ancho, height );
    //println( i );
  }
  
}
