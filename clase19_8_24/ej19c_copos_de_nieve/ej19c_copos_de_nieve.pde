
// COPOS DE NIEVE

//cantidad de copos = numero que utilizaríamos para definir la dimension de los arreglos
int c = 100;

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
//imagen

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
  }
}

void draw() {
  background( 200 );

  //1) actualizo mi copo
  for ( int i = 0; i < c; i++ ) {  // CON UN SOLO FOR RESUELVO TODAS LAS REPETICIONES
    posY[i] += velY[i];
  //}

  //2) dibujo mi copo
  //for (int i = 0 ; i < c ; i++) {
    fill( relleno[i] );
    circle( posX[i], posY[i], tam[i]);
  //}

  //3) reiniciar -> RECICLAR
  //for (int i = 0 ; i < c ; i++) {
    if ( posY[i] >= height+tam[i]/2 ) {
      posX[i] = random(width);
      posY[i] = random( -100, -400 );
      velY[i] = random( 1, 3 );
      tam[i] = random( 10, 40 );
      relleno[i] = color( 255, random(100, 255) );
    }
  }
}
