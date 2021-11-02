
class Aventura {

  Juego juego;
  String estado;

  Aventura() {
    estado = "inicio";
    juego = new Juego();
  }

  void draw() {
    if ( estado.equals("inicio") ) {
      text( estado, width/2, height/2 );
      if( keyPressed ) cambiarEstado( "juego" );
        
    } else if ( estado.equals("juego") ) {
      text( estado, width/2, height/2 );
      juego.draw(this);  //-----------------------> IMPORTANTE: VEASE COMO LE PASO LA INSTANCIA DEL OBJETO AVENTURA (this remite a "este" objeto).
      
    } else if ( estado.equals("caminoA") ) {
      text( estado, width/2, height/2 );
      
    } else if ( estado.equals("caminoB") ) {
      text( estado, width/2, height/2 );
    }
  }

  //metodo para cambiar el valor de la variable 'estado' --> recordad ENCAPSULAMIENTO: así debe accederse a cualquier propiedad desde afuera.
  void cambiarEstado( String nuevoEstado ) {
    estado = nuevoEstado;
    println( estado );
  }
}
