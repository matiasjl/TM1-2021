
//Estructuras repetitivas: CICLO FOR

int tamAncho;

void setup(){
  size( 400, 200 );
  
  tamAncho = width / 10;

}

void draw(){
  
  for( int i = 0 ; i < 400 ; i++ ){
    //calculos
    float m = map( i, 0, 399, 0, 255 );
    stroke( m );
    line( i, 0, i, height );
  }

}
