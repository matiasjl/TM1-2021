
class Juego {

  Juego() {
  }

  void draw( Aventura av ) {  //IMPORTANTE: FIJENSE COMO PIDO COMO PARÁMETRO UN DATO DE TIPO AVENTURA
    
    pushStyle();
    textSize( 16 );
    text( "clic izquierda para caminoA \n o derecha para caminoB", width/2, height/4*3 );
    popStyle();
    
    if( mousePressed && mouseX < width/2 ){  //TRES MANERAS DE CAMBIAR UN ESTADO
    // EN VEZ DE HACER ESTO....
    // aventura.estado = "caminoA";
    // PODRÍAN HACER ESTO...
    // aventura.cambiarEstado( "caminoA" );
    // O MEJOR AÚN....
       av.cambiarEstado( "caminoA" );  //AQUÍ LA "BUENA PRÁCTICA" PARA ACCEDER A METODOS DE LOS OBJETOS ANTESESORES A ESTE
    }
    
    if( mousePressed && mouseX > width/2 ){  //Ojo con esto... es un ejemplo, pero debería ir en mousePressed.
       av.cambiarEstado( "caminoB" );
    }    
  }
  
  
}
