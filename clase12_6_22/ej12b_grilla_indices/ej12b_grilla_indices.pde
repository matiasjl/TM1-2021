
int tam;
int c;  //cantidad

void setup(){
  size( 400, 400 );
  
  c = 8;           //cantidad de cuadrados por fila
  tam = width / c;  //tamaño se ajusta a la cantidad de iteraciones = cantidad de cuadrados
}

void draw(){
  //ejercicio 3: FOR ANIDADO
  for( int x = 0 ; x < c ; x++ ){  //maneja las columnas
    for( int y = 0 ; y < c ; y++ ){  //maneja las filas
      fill( 255 );
      rect( x*tam, y*tam, tam, tam );
      
      //indices
      fill( 0 );
      text( x + " / " + y, x*tam+10, y*tam+20 );
      
      //coordenadas
      fill( 0 );
      text( "x = " + x*tam, x*tam+10, y*tam+35 );
      text( "y = " + y*tam, x*tam+10, y*tam+45 );
    }
  }
    
}
