
// Maquina de estados finitos
// ESTADOS y EVENTOS
// Ejemplo 2: estructura de videojuego

int estado;

void setup() {
  size( 600, 400 );
  textSize( 32 );
  textAlign( CENTER, CENTER );

  estado = 0;  //0 = menu; 1 = juego; 2 = creditos;
}

void draw() {
  if ( estado == 0 ) {  //menu
    background( 200 );
    fill( 0 );
    text( "menú", width/2, height/2);

    //DIBUJO MI BOTON
    circle( width/2, height/4*3, 100 );

    //EVENTO: al hacer clic con el mouse cambio de estado
    //if( mousePressed ){  
    //background( 200 );
    //estado = 1;
    //}
  } else if ( estado == 1 ) {  //juego
    fill( 0, 50 );
    noStroke();
    ellipse( random( width), random(height), 20, 20 );
    
    //EVENTO: condición de tiempo por frameCount
    println( frameCount );
    if( frameCount > 600 ){
      estado = 2;
    }
    //
  } else if ( estado == 2 ) {  //creditos
    background( 50 );
    fill( mouseX );  //map a 255
    text( "créditos", width/2, height/2);
    //
  }
}

void mousePressed() {  //EVENTO: condición por clic, desde MENU a JUGAR
  if ( estado == 0 ) {  //en qué estado estoy: MENU
    if ( dist(mouseX, mouseY, width/2, height/4*3 ) < 100/2 ) {  //si estoy dentro del circle
      background( 200 );
      estado = 1;  //a qué estado voy: JUGAR
    }
  }
}
