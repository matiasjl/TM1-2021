
// Maquina de estados finitos
// ESTADOS y EVENTOS

String estado;

void setup(){
  size( 600, 400 );
  
  estado = "verde";
}

void draw(){  //ESTADOS
  // ----------------------------------
  if( estado.equals("rojo") ){
    background( 255, 0, 0 );

  } // ----------------------------------  
  else if( estado.equals("verde") ){
    background( 0, 255, 0 );
  
  } // ----------------------------------
  else if( estado == "azul" ){  //forma incorrecta de consultar contenido de un string
    background( 0, 0, 255 );
    
  }
}

void keyPressed(){  //EVENTOS
  if( key == 'r' )
    estado = "rojo";
}
