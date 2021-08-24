
// COPOS DE NIEVE

//cantidad de copos = numero que utilizaríamos para definir la dimension de los arreglos
int c = 500;

//caracteristicas de los copos = propiedades
//posicion x
//float posX;
float[] posX = new float[c];
//posicion y
//float posY;
float posY[] = new float[c];
//velocidadY
float[] velY = new float[c];
//tamanio
float[] tam = new float[c];
//opacidad-color
color[] relleno = new color[c];

//imagen --> NUEVO!
PImage[] imagen = new PImage[c];

void setup() {
  size( 500, 500 );
  noStroke();
  //surface.setLocation( 1200, -800 );

  //inicializo las variables = propiedades
  for ( int i = 0; i < c; i++ ) {  //recorre los arreglos
    posX[i] = random(width);
    posY[i] = random( -400, -100 );
    velY[i] = random( 1, 3 );
    tam[i] = random( 10, 40 );
    relleno[i] = color( 255, random(100, 255) );

    //carga de las imagenes
    imagen[i] = loadImage( "snowflake-" + i%50 + ".png" );
    //modificar el tamaño de las imágenes
    imagen[i].resize( int(tam[i]), int(tam[i]) );
    //invierto el color para que sean blancos
    imagen[i].filter(INVERT);
  }
}

void draw() {
  background( 0, 0, 100 );  //cielo azul noche

  //1) actualizo mi copo
  for ( int i = 0; i < c; i++ ) {  // CON UN SOLO FOR RESUELVO TODAS LAS REPETICIONES
    posY[i] += velY[i];

    //2) dibujo mi copo
    //con ellipse
    //fill( relleno[i] );
    //circle( posX[i], posY[i], tam[i]);
    //con imagen --> tint modifica la transparencia ;)
    tint( relleno[i] );
    image( imagen[i], posX[i], posY[i] );
    

    //3) reiniciar -> RECICLAR
    if ( posY[i] >= height+tam[i]/2 ) {
      posX[i] = random(width);
      posY[i] = random( -100, -400 );
      velY[i] = random( 1, 3 );
      tam[i] = random( 10, 40 );
      relleno[i] = color( 255, random(100, 255) );
    }
  }
}
