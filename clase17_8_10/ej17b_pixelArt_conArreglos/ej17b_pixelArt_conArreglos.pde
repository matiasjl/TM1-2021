
int cantidad = 10;
int tamCelda;

//DECLARO UN ARREGLO BIDIMENSIONAL DE TIPO DATO BOOLEANO
boolean[][] celdaPintada = new boolean[cantidad][cantidad];

void setup(){
  size( 400, 400 );
  tamCelda = width / cantidad; //50
  
  //RECORRO EL ARREGLO BIDIMENSIONAL Y LE DOY VALOR INICIAL = false;
  for( int x = 0 ; x < cantidad ; x++ ){
    for( int y = 0 ; y < cantidad ; y++ ){
      celdaPintada[x][y] = false;  //100 veces
    }
  }
  
}

void draw(){
  for( int x = 0 ; x < cantidad ; x++ ){
    for( int y = 0 ; y < cantidad ; y++){
      if( celdaPintada[x][y] /*== true*/ ){
        fill(0);
      }else{
        fill(255);
      }
      square( x*tamCelda, y*tamCelda, tamCelda );
    }
  }
}

void mousePressed(){
  for( int x = 0 ; x < cantidad ; x++ ){
    for( int y = 0 ; y < cantidad ; y++){
      if( mouseX>x*tamCelda && mouseX<x*tamCelda+tamCelda && mouseY>y*tamCelda && mouseY<y*tamCelda+tamCelda ){
        
        //OPCION CON BUG
        //celdaPintada[x][y] = true;
        
        /* OPCION A
        if( celdaPintada[x][y] == true ){
          celdaPintada[x][y] = false;
        }else{
          celdaPintada[x][y] = true;
        }
        */
        
        //OPCION B: igual a su negativo (!)
        celdaPintada[x][y] = !celdaPintada[x][y];
        
      }
    }
  }
}
