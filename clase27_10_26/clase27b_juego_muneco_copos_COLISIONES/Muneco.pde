
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
    //line(x-t/6, y, x-t/2, y-t/4);  //chau brazos feos
    //line(x+t/6, y, x+t/2, y-t/4);
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
  //------------------------------------
  //COLISIONES
  
  void colision( Copo[] co, Copo[] ce ){
    //COLISION CON ARREGLO DE COPOS
    for( int i = 0 ; i < co.length ; i++ ){
      float x_copo = co[i].getX();
      float y_copo = co[i].getY();
      //hasta acá tengo las posiciones x e y de cada copo
      float d_cuerpo = dist( x_copo, y_copo, x, y );
      float d_cabeza = dist( x_copo, y_copo, x, y-t/4 );
      if( d_cuerpo < (t/3)/2 || d_cabeza < (t/4)/2 ){  //aquí se produce la colisión: ojo con el umbral -> MODO COMPLEJO: calculo distancias de la cabeza y el cuerpo (más exactitud en la colision)
        t += 10;
        println( "COLISIÖN: copos" + frameCount );
        //IMPORTANTE: que funcione como evento, no como estado
        co[i].reciclar();  //de esta manera se "tocan" una sola vez
      }
    }
    //COLISION CON ARREGLOS DE CENIZAS
    for( int i = 0 ; i < ce.length ; i++ ){
      float d_cuerpo = dist( x, y, ce[i].getX(), ce[i].getY() );
      float d_cabeza = dist( x, y-t/4, ce[i].getX(), ce[i].getY() );
      //listo distancias, ahora a calcular colisiones:
      if( d_cuerpo < (t/3)/2 || d_cabeza < (t/4)/2 ){
        //si colisiona, dos eventos:
        //1ro, achico el muneco / quito vida / resto tiempo / lo que sea
        t -= 20;
        //2do, reciclo el copo para evitar el bug de "colision constante"
        ce[i].reciclar();
      } 
    }
  }

}
