
// EJERCICIO EN CLASE #1
// Armar una fila (horizontal) de 10 cuadrados con un ciclo for

// EJERCICIO EN CLASE #2
// Armar una columna (vertical) de 10 cuadrados con un ciclo for

// EJERCICIO EN CLASE #3
// Armar una grilla de 10x10 cuadrados combinando los ejercicios anteriores

// Si lo resolvieron, poner RESUELTO en el chat :)
// Si tienen duda, abran el microfóno y pregunten!


float tam;
int c;  //cantidad

void setup(){
  size( 500, 500 );
  
  c = 50;           //cantidad de cuadrados por fila
  tam = width / c;  //tamaño se ajusta a la cantidad de iteraciones = cantidad de cuadrados
}

void draw(){
  //ejercicio 1
  //for( int i = 0 ; i < 10 ; i ++ ){
  //  rect( 0, i*50, 50, 50 );
  //}
  
  //ejercicio 2
  //for( int i = 0 ; i < 10 ; i ++ ){
  //  rect( i*50, 0, 50, 50 );
  //}
  
  //ejercicio 3: FOR ANIDADO
  for( int x = 0 ; x < c ; x++ ){
    for( int y = 0 ; y < c ; y++ ){
      rect( x*tam, y*tam, tam, tam );
    }
  }
  
  //tam = map(mouseX, 0, width, 100, 10 );
  
}
