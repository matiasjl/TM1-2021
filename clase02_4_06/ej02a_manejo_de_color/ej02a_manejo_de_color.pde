/* todo lo que se encuentra entre barras es un comentario

MANEJO DEL COLOR EN PROCESSING

Paleta de color RGB = colores primarios de la luz (sintesis aditiva)

  R = red (rojo)
  G = green (verde)
  B = blue (azul)

  256 valores > rango de 0 a 255
  
  //CONCLUSION_1: el cero es el primer número de toda escala en programación
  
  Colores secundarios = magenta, cyan, amarillo = paleta CMY
  
  //CONCLUSION_2: los colores secundarios son sintesis sustractiva
  
*/

void setup(){  //se ejecuta una sola vez: config del programa
  size( 400, 200 );
  
  // define el color de fondo
  //background( VALOR_DE_GRIS );
  //background( R, G, B );
  background( 255, 128, 0 );  //naranja
  background( #FF80F0 );      //rosado: esta funcion "tapa" la anterior

}

void draw(){ //se ejecuta 60fps por defecto, todo el tiempo: dibujar

  background( 0 );  //negro: "tapa" la del setup
  
  //SINTAXIS
  //fill( VALOR_DE_GRIS );  //relleno color
  //fill( r, g, b );
  //fill( r, g, b, ALPHA );
  //stroke( VALOR_DE_GRIS );  //borde color
  //stroke( r, g, b );
  //strokeWeight( PIXELES );  //borde GROSOR
  //
  //rect( x, y, a, h );  //rectangulo
  //--------------------------------
  
  //LO APLICO A TODAS LAS FIGURAS
  strokeWeight( 10 );
  
  //rect rojo
  fill( 255, 0, 0 );
  rect( 0, 50, 100, 100 );

  //rect verde
  fill( 0, 255, 0 );
  rect( 100, 50, 100, 100 );
  
  //rect azul
  fill( 0, 0, 255 );
  rect( 200, 50, 100, 100 );
  
  //rect rojo2
  fill( 255, 0, 0 );
  rect( 300, 50, 100, 100 );
  
  //CONCLUSION_3: el fill afecta a todas las figuras siguientes
  
  strokeWeight( 0 );
  //noStroke();
  
  //circulo amarillo
  fill( 255, 255, 0, 255 );  //alpha/opacidad/transparencia
  circle( 100, 100, 50 );

  //circulo cyan
  fill( 0, 255, 255 );
  circle( 200, 100, 75 );

  //circulo magente
  fill( 255, 0, 255 );
  circle( 300, 100, 100 );

}
