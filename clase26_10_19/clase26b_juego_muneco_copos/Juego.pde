
class Juego {

  // -----------------------------------------------------
  // PROPIEDADES (variables)
  // EstadoGeneralDelJuego = menu, jugar, ganar, perder
  int estado;
  // Muneco jugador;
  Muneco jugador;
  // Arreglo de Copos como copos
  Copo[] copos;
  // Arreglo de Copos como cenizas
  Copo[] cenizas;
  // que variable clave me falta???
  int c;

  // -----------------------------------------------------
  // CONSTRUCTOR (setup del objeto)
  Juego( int cantidad ) {
    // EstadoGeneralDelJuego = "menu";
    c = cantidad;
    estado = 0;
    // inicializar los objetos: jugador, copos, cenizas
    jugador = new Muneco( width/2, height/4*3, 100 );  //ajustar tamanio cuando pueda ejecutar este codigo
    //declaro la dimension de los arreglos
    copos = new Copo[c];
    cenizas = new Copo[c];
    //inicializo los objetos de los arreglos
    for ( int i = 0; i<c; i++ ) {
      copos[i] = new Copo( false );
      cenizas[i] = new Copo( true );
    }
  }

  // -----------------------------------------------------
  // METODOS (funciones) 
  // actualizar()
  void update() {
    // --muneco.actualizar();  --> no es el caso;
    // FAIL, mi clase no tiene metodo actualizar (error de diseño)

    for ( int i = 0; i<c; i++ ) {
      // --copos.actualizar();
      copos[i].update();
      // --cenizas.actualizar();
      cenizas[i].update();
    }
  }

  // dibujar()
  void draw() {
    // --logicaDeEstados
    // esto queda pendiente cuando tengamos las opciones de ganar y perder...

    // --llamar a los metodos dibujar de mis objetos
    jugador.dibujar();

    for ( int i = 0; i<c; i++ ) {
      // --copos.dibujar();
      copos[i].draw();
      // --cenizas.dibujar();
      cenizas[i].draw();
    }
  }

  // resetear()
  void reciclar() {
    for ( int i = 0; i<c; i++ ) {
      // --copos.reciclar();
      copos[i].reciclar();
      // --cenizas.reciclar();
      cenizas[i].reciclar();
    }
  }

  //importante: un método que ejecute los métodos del teclado de las clases
  void teclado( int k ) {
    jugador.mover( k );
    //jugador.moverIzq();
    //jugador.moverDer();
  }

  //nuevito flashado in real time
  int devolverEstadoJuego() {
    return estado;
  }
}
