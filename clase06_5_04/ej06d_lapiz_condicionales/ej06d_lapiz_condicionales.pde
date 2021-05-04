
// M3: Animacional NO lineal
// Interactividad y Condionales

/* CONDICIONALES con IF

  si ( CONDICION ){
    //sucede este 
    //bloque de codigo
  }

  CONDICION = expresion de tipo booleana (TRUE/FALSE = VERDADERO O FALSO )
  -- COMPARACIÓN  entre dos valores: >, <, == , >=, <=, != (COMPARADORES LOGICOS)

*/

color cLapiz;

void setup(){  //CUANDO: al iniciar el programa ("al darle play")
  size( 400, 600 );
  background( 255 );
  noFill();
  
  //inicializo mi variable de color en su defecto
  cLapiz = color( 0, 0, 0 );
  
}

void draw(){  //CUANDO: constantemente, una vez por fotograma, por defecto 60FPS
  
}

//------------------------------------------------------------
//EVENTOS DE TECLADO Y MOUSE

void keyPressed(){  //CUANDO: al presionar cualquier tecla del teclado
  println( "La tecla presionada es: " + key );
  
  if( key == ' ' ){
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
  stroke( cLapiz );
  line( mouseX, mouseY, pmouseX, pmouseY ); //p = previous
}

void mouseMoved(){  //CUANDO: cuando muevo el mouse SIN clic presionado
  stroke( cLapiz );
  ellipse( random(width), random(height), 2, 2 );
}
