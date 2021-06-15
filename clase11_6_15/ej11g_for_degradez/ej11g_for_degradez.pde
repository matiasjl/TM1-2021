
//Estructuras repetitivas: CICLO FOR

int tamAncho;

void setup(){
  size( 400, 400 );
  noFill();
  
  tamAncho = width / 10;

}

void draw(){
  
  for( int i = 0 ; i < 20 ; i++ ){  //contador de 0 a 19
    strokeWeight( i );
    circle( 200, 200, i*40 );  //40 = distancia entre circulos
  }

}
