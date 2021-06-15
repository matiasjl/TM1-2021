//Estructuras repetitivas: CICLO FOR

int ancho;  //variable GLOBAL: puede acceder todo su programa

void setup(){
  size( 400, 200 );
  
  ancho = width / 10;  //=40
  
  int x = 100;  //variable LOCAL: nace y muere (existe) dentro de las llaves, en este caso en el setup();
}

void draw(){
  background( 0 );
  
  /* SINTAXIS CICLO FOR
    for( iniciador ; condicion ; actualizacion ){
      acciones;
    }
  */
  
  //1: actualizo + 1
  //for( int i = 0 ; i < 10 ; i++ ){
  //  rect(i*40, 0, ancho, height );
  //  println( i );
  //}
  
  //2: actualizo + 40 
  for( int i = 0 ; i < mouseX ; i+=40 ){
    rect(i, 0, ancho, height );
    println( i );
  }
 
  //CONCLUSION_1: i (indice) funciona como contador del 0 al 9
  //CONCLUSION_2: este indice es LA magia del for
  
  //rect(NUM_QUE_CAMBIA, 0, ancho, height );
}
