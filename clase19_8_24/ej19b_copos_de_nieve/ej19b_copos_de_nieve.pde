
// COPOS DE NIEVE

//cantidad de copos = numero que utilizaríamos para definir la dimension de los arreglos
int c = 10;

//caracteristicas de los copos = propiedades
//posicion x
//float posX;
float[] posX = new float[c];
//posicion y
//float posY;
float posY[] = new float[c];
//velocidadY
float velY;
//tamanio
float tam;
//opacidad-color
color relleno;
//imagen

void setup() {
  size( 500, 500 );
  noStroke();
  surface.setLocation( 1200, -800 );

  //inicializo las variables = propiedades
  for ( int i = 0; i < c; i++ ) {  //recorre el arreglo
    posX[i] = random(width);
    posY[i] = random( -400, -100 );
  }
  velY = random( 1, 3 );
  tam = random( 10, 40 );
  relleno = color( 255, random(100, 255) );
}

void draw() {
  background( 200 );

  //1) actualizo mi copo
  for ( int i = 0; i < c; i++ ) {
    posY[i] += velY;
  }

  //2) dibujo mi copo
  for (int i = 0 ; i < c ; i++) {
    fill( relleno );
    circle( posX[i], posY[i], tam);
  }

  //3) reiniciar -> RECICLAR
  for (int i = 0 ; i < c ; i++) {
    if ( posY[i] >= height+tam/2 ) {
      posX[i] = random(width);
      posY[i] = random( -100, -400 );
      velY = random( 1, 3 );
      tam = random( 10, 40 );
      relleno = color( 255, random(100, 255) );
    }
  }
}
