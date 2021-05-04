
// M3: Animacional NO lineal
// Interactividad y Condionales

// EVENTOS = algo que sucede, el CUANDO
// MAS eventos de ambas interfaces :)

int grosor = 0;

void setup(){  //CUANDO: al iniciar el programa ("al darle play")
  size( 400, 600 );
  background( 255 );
  noFill();
  
}

void draw(){  //CUANDO: constantemente, una vez por fotograma, por defecto 60FPS
  
}

//------------------------------------------------------------
//NUEVOS EVENTOS DE TECLADO Y MOUSE

void keyPressed(){  //CUANDO: al presionar cualquier tecla del teclado
  background( 255 );
}

void mousePressed(){ //CUANDO: al "mantener presionado" del mouse
  println( "mousePressed is ON" );
  grosor += 5;  //cada vez que COMIENZO a dibujar una linea, AUMENTA el grosor
}

void mouseClicked(){  //CUANDO: al "instante preciso" de hacer clic
  //stroke( 255, 0, 0 );
  
  //CONCLUSION: sólo se ejecuta al tocar y soltar el clic
}

void mouseDragged(){  //CUANDO: al arrastrar el mouse CON el clic presionado
  strokeWeight(grosor);
  line( mouseX, mouseY, pmouseX, pmouseY ); //p = previous
}

void mouseMoved(){  //CUANDO: cuando muevo el mouse SIN clic presionado
  strokeWeight( 1 );
  ellipse( random(width), random(height), 2, 2 );
}
