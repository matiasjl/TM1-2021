//Estructuras repetitivas: CICLO FOR

int ancho;

void setup(){
  size( 400, 200 );
  
  ancho = width / 10;  //=40
  }

void draw(){
  background( 0 );
   
  for( int i = 0 ; i < 10 ; i++ ){
    //par e impar
    if( i % 2 == 0 ){  //par
      fill( 0 );
    }else{  //impar (i%2==1)
      fill( 255 );
    }
    rect(i*40, 0, ancho, height );
    //println( i );
  }
  
  //test de par e impar con módulo
  println( 7 % 2 );  
  println( 8 % 2 );  
  
}
