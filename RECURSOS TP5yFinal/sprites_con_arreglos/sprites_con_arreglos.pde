
PImage[] m = new PImage[3];
float posx;
int c;

void setup() {
  //reemplazo al size --> tip!
  fullScreen(2);

  //cargo las imagenes
  for ( int i = 0; i < 3; i++ ) {
    m[i] = loadImage( "mb0" + i + ".png" );  //concatenacion de texto
  }

  posx = width/2;
  c = 0;
}

void draw() {
  background( 255 );
  
  //si lo visualizamos con ciclo for...
  //for ( int i = 0; i < 3; i++ ) {
  //  image( m[i], i * 100, height/2 );
  //}
  
  //si lo visualizamos con contador... MUESTRO UNA SOLA IMAGEN
  image( m[c], posx, height/2 );
}

void keyPressed() {
  //actualizo valor de posición en x
  if( keyCode == RIGHT ) posx += 10;
  if( keyCode == LEFT ) posx -= 10;
  //guardo en variable el ancho de la imagen
  int anchoDeImagen = m[c].width;
  //paso de borde derecho al izquierdo y viceversa
  if( posx > width ) posx = -anchoDeImagen;
  if( posx < -anchoDeImagen ) posx = width;
  
  //actualizo valor del contador
  c++;
  if( c == 3 ) c = 0;
}
