
int tam;
int c;  //cantidad

void setup(){
  size( 400, 400 );
  surface.setLocation( 500, -600 );
  
  c = 8;           //cantidad de cuadrados por fila
  tam = width / c;  //tamaño se ajusta a la cantidad de iteraciones = cantidad de cuadrados
}

void draw(){
  //ejercicio 3: FOR ANIDADO
  for( int x = 0 ; x < c ; x++ ){  //maneja las columnas
    for( int y = 0 ; y < c ; y++ ){  //maneja las filas
      
      //diagonal descendente: (x == y)
      //diagonal ascendente: (x + y == c-1)
      if( (x == y) || (x + y == c-1) ){  //IMPORTANTE: operador 'OR' me permite utilizar ambas condiciones en un mismo if
        fill( 0 );
      }else{
        fill( 255 );
      }
      rect( x*tam, y*tam, tam, tam );
      
      fill( 0 );
      text( x + " / " + y, x*tam+10, y*tam+20 );
    }
  }
    
}
