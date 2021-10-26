
//declaro la clase juego
Juego juego;

void setup() {
  size( 800, 600 );
  //inicializo la clase juego
  juego = new Juego( 15 );
}

void draw() {
  background( #00AAE4 );

  //llamo a los métodos de la clase Juego
  juego.update();
  juego.draw();
}

void keyPressed() {
  //metodos de las teclas
  juego.teclado( keyCode );
}

void mousePressed() {
}
