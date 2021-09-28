
// Muñeco de nieve cual personaje de videojuego con Programación Procedural o Estructurada

// CAMPOS o PROPIEDADES de nuestro personaje
float posX, posY; //tam;

void setup(){
  size( 800, 600 );
  
  // Inicializar las propiedades/variables
  posX = width / 2;
  posY = 400;
  //tam = 200;
}

void draw(){
  background( 200 );
  
  // METODOS o FUNCIONES de nuestro personaje
  
  // 1a) Accion: mover o actualizar con mouse --> mejor sería en evento mouseMoved()
  //posX = mouseX;
  
  // 2) Acción: dibujar
  dibujarMuneco( posX, posY, 200 );
}

void keyPressed(){
  // METODOS o FUNCIONES de nuestro personaje
  // 1b) Accion: mover o actualizar con teclado
  if( keyCode == LEFT )
    posX -= 10;
  if( keyCode == RIGHT )
    posX += 10;
}

void dibujarMuneco(float x, float y, float t){
  pushStyle();
  strokeWeight( t/50 );
  line(x-t/6, y, x-t/2, y-t/4);
  line(x+t/6, y, x+t/2, y-t/4);
  noStroke();
  fill(255);
  //cabeza
  circle(x, y-t/4, t/4);
  //cuerpo
  circle(x, y, t/3);
  //cuerpo2
  circle(x, y+t/4, t/2);
  //ojos
  fill(0);
  circle(x-t/15, y-t/4, t/50);
  circle(x+t/15, y-t/4, t/50);
  popStyle();
}
