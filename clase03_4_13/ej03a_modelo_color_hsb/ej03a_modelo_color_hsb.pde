/*
  Modelo de Color HSB
  colorMode( HSB );  --> en setup!
  
  H = Hue (tono)
  S = Saturation (saturación) -> pureza de color (blanco)
  B = Brightness (brillo) -> valor de negro
  
  IMPORTANTE: Afecta a los parámetros de todas las funciones de propiedades del color
  - background();
  - fill();
  - stroke();

*/

void setup(){
  size( 600, 600 );
  colorMode( HSB );
  colorMode( HSB, 360, 100, 100 );
  
  noStroke();
  
}

void draw(){
  
  // COLORES PRIMARIOS DE LA LUZ (sintesis aditiva)
  // > CAMBIO DE BRILLO
  
  //rojo: 0
  fill( 0, 100, 100 );
  rect( 0, 0, 200, height );
  
  //verde: 120
  fill( 120, 100, 70 );
  rect( 200, 0, 200, height );
  
  //azul: 240
  fill( 240, 100, 40 );
  rect( 400, 0, 200, height );
  
  // COLORES SECUNDARIOS DE LA LUZ (sintesis aditiva)
  // > CAMBIO DE SATURACIÓN
  
  //amarillo: 60
  fill( 60, 100, 100 );
  circle( 200, height/2, 150 );
  
  //cyan: 180
  fill( 180, 70, 100 );
  circle( 400, height/2, 150 );

  //magenta: 300
  fill( 300, 40, 100 );
  circle( 600, height/2, 150 );
  circle( 0, height/2, 150 );
  
  //visualizador del HUE
  //background( mouseX, 100, 70 );
  

}
