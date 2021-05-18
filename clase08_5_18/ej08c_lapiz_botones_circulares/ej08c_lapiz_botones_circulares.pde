
// M3: Animacional NO lineal
// Interactividad y Condionales

/*
  BOTONES: VISUALIZACIÓN

*/

color cLapiz;  //color
int gLapiz;  //grosor

void setup(){  //CUANDO: al iniciar el programa ("al darle play")
  size( 400, 600 );
  background( 255 );
  noFill();  //IMPORTANTE para el 'area de dibujo'
  smooth();
  
  //inicializo mi variables de COLOR y GROSOR en su defecto
  cLapiz = color( 0, 0, 0 );
  gLapiz = 1;
}

void draw(){  //CUANDO: constantemente, una vez por fotograma, por defecto 60FPS
  //PROPIEDADES EN COMUN a todos las primitivas de dibujo del draw
  strokeWeight( 1 );
  stroke( 0 );
  //dibujar la zona donde quiero que se dibuje
  rect( 50, 50, 300, 450 );
  
  //------------------------------------------------------------------
  //dibujar los botones debajo de la zona de dibujo
  fill(200);
  noStroke();
  rect( 0, 501, width, 100 );  //simil background
  //PROPIEDADES COMUNES de los botones
  stroke( 0 );
  noFill();
  //tres circulos para el grosor
  circle( 50+25, 550, 25 );
  circle( 50+70, 550, 35 );
  circle( 50+125, 550, 50 );
  //tres cuadrados para el color
  fill( 255, 0, 0 );
  rect( 200+15, 550-15, 30, 30 );
  fill( 0, 255, 0 );
  rect( 250+15, 550-15, 30, 30 );
  fill( 0, 0, 255 );
  rect( 300+15, 550-15, 30, 30 );
  noFill();
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
    strokeWeight( gLapiz );
    line( mouseX, mouseY, pmouseX, pmouseY ); //p = previous
    //}
  }
  //otra forma de escribir lo mismo con ifs anidados
  if( mouseX > 50 ){
    if( mouseY > 50 ){
      if( mouseX < 350 ){
        if( mouseY < 600-100 ){
          //aca es la zona de dibujo
        }
      }
    }
  }
}

void mousePressed(){
  println( mouseX + " / " + mouseY );
  
  //-----------------------------------------------------------------
  //botones cuadrados para modificar el color trazo
  //ROJO = rect( 200+15, 550-15, 30, 30 );
  if ( mouseX>215 && mouseY>535 && mouseX<245 && mouseY<565 ){
    cLapiz = color(255, 0, 0 );
  }
  //VERDE = rect( 250+15, 550-15, 30, 30 );
  if( (250+15<mouseX) && (mouseY>550-15) && ( 265+30>mouseX) && (mouseY<535+30) ){  //atentis al cambio de orden de parametro vs cambio de signo <>
     cLapiz = color(0, 255, 0 );
  }
  //AZUL = rect( 300+15, 550-15, 30, 30 );
  if( (mouseX> 300+15)  &&  (mouseY>550-15)  && (mouseX<315+30) && (mouseY<535+30) ){
     cLapiz = color(0, 0, 255 );    
  }

  //-----------------------------------------------------------------
  //botones circulares para modificar el grosor del trazo
  //if ( dist(mouseX, mouseY, x, y) < radio ) { ... }
  //REFE1 = circle( 50+25, 550, 25 );
  if( dist(mouseX,mouseY,75,550) < (25/2) )  //si hay una sola linea de codigo puedo evitar las llaves
    gLapiz = 1;
  //REFE2 = circle( 50+70, 550, 35 );
  if( dist(mouseX, mouseY, 120, 550) < (35/2) )
    gLapiz = 3;
  //REFE3 = circle( 50+125, 550, 50 );
  if( dist(mouseX,mouseY,175,550) < (50/2) )
    gLapiz = 5;  
  
  println( "grosor: " + gLapiz );
}
