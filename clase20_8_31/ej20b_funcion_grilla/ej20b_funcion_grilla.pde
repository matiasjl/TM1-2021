
//funcion CON parametros SIN return: grilla( filas, columnas );

void setup(){
  size(400, 400 );
}

void draw(){
  grilla( 15, 15 );
}

void grilla( float filas, float columnas ){
  float tam = width / filas;
  for(int i = 0 ; i < filas ; i++ ){
    for(int j = 0 ; j < columnas ; j++ ){
      rect( i*tam, j*tam, tam, tam );
    }
  }
}
