
// BOTONES: zonas rectangulares y circulares

color fondo = color(255);
float xc, yc, diam;

void setup() {
  size( 300, 300 );
  //rectMode( CENTER );  //F F F 

  //variables del boton circular
  xc = yc = 200;
  diam = 50;
}

void draw() {
  background( fondo );

  //BOTONES: visualización
  fill( 255 );
  rect( 100, 200, 50, 50 );
  circle( xc, yc, diam );

  //texteo de circulo
  line( mouseX, mouseY, xc, yc );
  fill( 0 );
  float d = dist(mouseX, mouseY, xc, yc );
  text( d, mouseX, mouseY);

  //¿CÓMO PODRÍA HACER UNA SITUACIÓN DE 'over'?
}

void mousePressed() {
  //BOTONES: funcionales

  //BOTON CIRCULAR
  if ( dist(mouseX, mouseY, xc, yc) < diam/2 ) {
    fondo = color( 0, random(255), 0 );
  }else{
    fondo = color( 255 );
  }

  //BOTON CUADRADO
  boolean estoyDentroDelAreaCuadrada = (mouseX > 100) && (mouseX < 100+50) && (mouseY > 200) && (mouseY < 200+50);
  println( estoyDentroDelAreaCuadrada );
  if ( estoyDentroDelAreaCuadrada ) {
    //evento del boton:
    fondo = color( random(255), 0, 0 );
  }

}
