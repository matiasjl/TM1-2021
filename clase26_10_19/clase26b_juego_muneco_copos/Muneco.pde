
// por convención, la primer letra de las clases es en mayus: PImage, PGraphics...

class Muneco {

  // CAMPOS (variables) #propiedades
  float x, y;
  int t;


  // CONSTRUCTOR > metodo/funcion inicial de la clase (el "setup" del objeto)
  Muneco( float x_, float y_, int t_ ) {
    // inicializar las propiedades/variables
    x = x_;
    y = y_;
    t = t_;
  }

  // METODOS (funciones) #acciones
  void dibujar() {
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

  void moverConMouse() {
    x = mouseX;
  }

  //------------------------------------
  // METODOS PARA EJECUTAR EN KeyPressed
  void moverIzq() {
    if ( keyCode == LEFT )
      x -= 10;
  }

  void moverDer() {
    if ( keyCode == RIGHT )
      x += 10;
  }

  //MOVIMIENTO RECARGADO
  void mover( int k ) {
    if ( k == RIGHT ) {
      x += 10;
    } else if ( k == LEFT ) {
      x -= 10;
    }
  }
}
