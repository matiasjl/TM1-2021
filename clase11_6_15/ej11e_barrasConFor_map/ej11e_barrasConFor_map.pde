//Estructuras repetitivas: CICLO FOR

int ancho;

void setup(){
  size( 400, 200 );
  
  ancho = width / 10;  //=40
  
}

void draw(){
  background( 0 );
   
  for( int i = 0 ; i < 10 ; i++ ){
    float m = map( i, 0, 9, 255, 0 );
    fill( m );
    rect(i*40, 0, ancho, height );
    //println( i );
  }
  
  //CNCLUSION: map() combinado con indices me permite reescalar y reutilizar valores

}
