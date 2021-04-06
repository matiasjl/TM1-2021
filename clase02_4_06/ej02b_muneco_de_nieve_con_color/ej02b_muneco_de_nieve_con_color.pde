// MUÑECO DE NIEVE CON COLOR


void setup() {  //configurar

  size( 400, 400 );  //unidades en píxeles
  smooth();  //suaviza los bordes

}

void draw() {  //dibujar
  
  //CIELO y SUELO
  noStroke();  //
  //CIELO
  fill( 255, 0, 255 );
  rect(0, 0, width, 280 );  // width = devuelve el ancho de la pantalla
  //SUELO
  fill( 0, 100, 0 );
  rect( 0, 280, width, height - 280 );  // = 120

  //linea de horizonte
  stroke( 0 );
  strokeWeight( 2 );
  line( 0, 280, 400, 280 );
  
  //CONCLUSION_1: si las coordenadas Y coinciden, es una linea horizontal

  //TRES CIRCULOS
  //strokeWeight( 0 );
  noStroke();
  fill( 255 );
  
  //1 grande / abajo
  //circle( x, y, diam );
  circle( 200, 280, 180 );

  //2 mediana / medio
  circle( 200, 200, 150 );

  //3 chica / arriba
  circle( 200, 120, 120 );

  //nariz
  fill( 100 );
  //triangle( 190, 120, 210, 120, 200, 140 );
  triangle( 200-10, 120, 200+10, 120, 200, 120+20 );  
  //triangle( x1, y1, x2, y2, x3, y3 );
  
  //CONCLUSION_2: operaciones básicas matemáticas pueden ser ejecutadas en el lugar de los parámetros

}
