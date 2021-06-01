
// Maquina de estados finitos
// ESTADOS y EVENTOS
// Ejemplo 3: estructura de videojuego RECARGADO
// Atentis a comentarios MOD_x

int estado;
PFont miTipo;

void setup() {
  size( 600, 400 );
  
  textSize( 32 );
  textAlign( CENTER, CENTER );
  miTipo = createFont( "minecrafter.ttf", 50 );  //MOD_2: fuente personalizada a partir de ttf en carpeta data
  textFont( miTipo );

  estado = 0;  //0 = menu; 1 = juego; 2 = creditos;
}

void draw() {
  if ( estado == 0 ) {  //menu
    background( 200 );
    fill( 0 );
    //textFont( miTipo );
    text( "menu", width/2, height/2);

    //DIBUJO MI BOTON
    boolean EstoyDentroDelBoton = (dist(mouseX, mouseY, width/2, height/4*3 ) < 100/2);
    if( EstoyDentroDelBoton ){  //MOD_1: overmouse
      fill( 0 );
    }else{
      fill( 100 );
    }
    //alternativa: https://processing.org/reference/conditional.html  (otro tipo de condicional)
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
    float f = map( mouseX, 0, 400, 100, 200 );  //MOD_3: escala de valores de color con map
    fill( f );
    text( "creditos", width/2, height/2);
  }
}

void mousePressed() {  //EVENTO: condición por clic, desde MENU a JUGAR
  if ( estado == 0 ) {  //en qué estado estoy: MENU
    if ( dist(mouseX, mouseY, width/2, height/4*3 ) < 100/2 ) {  //si estoy dentro del circle
      background( 200 );
      frameCount = 0;  //MOD_4: reseteo del tiempo
      estado = 1;  //a qué estado voy: JUGAR
    }
  }
}
