
// M3: Animacional NO lineal
// Interactividad y Condionales

// EVENTOS = algo que sucede, el CUANDO

void setup(){  //CUANDO: al iniciar el programa ("al darle play")
  size( 400, 600 );
  background( 255 );
  noFill();
  
  //frameRate( 5 );
}

void draw(){  //CUANDO: constantemente, una vez por fotograma, por defecto 60FPS
  //point( mouseX, mouseY );
  //circle( mouseX, mouseY, 15 );
  
  //LA SOLUCION AL PROBLEMA DE DIBUJAR COMO UN LAPIZ
  //dibujo una linea entre la posicion actual y la anterior del mouse
  line( mouseX, mouseY, pmouseX, pmouseY ); //p = previous
}

//NUEVOS EVENTOS DE TECLADO Y MOUSE

void keyPressed(){  //CUANDO: al presionar cualquier tecla del teclado
  background( 255 );
}

void mousePressed(){ //CUANDO: al presionar lxs clic del mouse
  stroke( 255 );
}
