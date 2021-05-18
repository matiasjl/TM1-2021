
// M3: Animacional NO lineal
// Interactividad y Condionales

/*
  BOTONES: VISUALIZACIÓN

*/

color cLapiz;  //color
int glapiz;  //grosor

void setup(){  //CUANDO: al iniciar el programa ("al darle play")
  size( 400, 600 );
  background( 255 );
  noFill();  //IMPORTANTE para el 'area de dibujo'
  smooth();
  
  //inicializo mi variable de color en su defecto
  cLapiz = color( 0, 0, 0 );
  
}

void draw(){  //CUANDO: constantemente, una vez por fotograma, por defecto 60FPS
  //dibujar la zona donde quiero que se dibuje
  rect( 50, 50, 300, 450 );
  
  //------------------------------------------------------------------
  //dibujar los botones debajo de la zona de dibujo
  fill(200);
  noStroke();
  rect( 0, 501, width, 100 );
  stroke( 0 );
  noFill();
  //tres circulos para el grosor
  circle( 50+25, 550, 25 );
  circle( 50+70, 550, 35 );
  circle( 50+125, 550, 50 );
  //tres cuadrados para el color
  rect( 200+15, 550-15, 30, 30 );
  rect( 250+15, 550-15, 30, 30 );
  rect( 300+15, 550-15, 30, 30 );
  //------------------------------------------------------------------

}

//------------------------------------------------------------
//EVENTOS DE TECLADO Y MOUSE

void keyPressed(){  //CUANDO: al presionar cualquier tecla del teclado
  println( "La tecla presionada es: " + key );
  
  if( key == ' ' ){    //barra espaciadora "borra" la pantalla
    background( 255 );
    println( "--------------------" );
  }
  
  //CONDICIONAL
  //si la tecla presionada es 'r', se ejecuta el codigo entre llaves
  if( key == 'r' ){
    cLapiz = color(255, 0, 0 );
    println( "hola soy rojo" );
  }
  if( key == 'g' ){
    cLapiz = color(0, 255, 0 );
  }
  if( key == 'b' ){
    cLapiz = color(0, 0, 255 );
  }
}

void mouseDragged(){  //CUANDO: al arrastrar el mouse CON el clic presionado
  
  //if( estaDentroDeLaZona ){
  //if( mouseX > width/2 ){  
  //if( mouseY > height/2 ){  
  //if( (mouseX > width/2) && (mouseY > height/2) ){  // el operador lógico && me permite sumar expresiones relacionales
  
  //rect( 50, 50, 300, 450 );
  if( (mouseX > 50) && (mouseY > 50) && (mouseX < 350) && (mouseY < 600-100) ){
    //if( (pmouseX > 50) && (pmouseY > 50) && (pmouseX < 350) && (pmouseY < 600-100) ){  //para resolver bug, no es tan necesario para botones
    stroke( cLapiz );
    line( mouseX, mouseY, pmouseX, pmouseY ); //p = previous
    //}
  }
}

void mousePressed(){
  println( mouseX + " / " + mouseY );
}
