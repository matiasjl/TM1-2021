
// COPOS DE NIEVE

//cantidad de copos = numero que utilizaríamos para definir la dimension de los arreglos

//caracteristicas de los copos = propiedades
//posicion x
float posX;
//posicion y
float posY;
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
  posX = 100;
  posY = -100;
  velY = random( 1, 3 );
  tam = random( 10, 40 );
  relleno = color( 255, random(100, 255) );
}

void draw() {
  background( 200 );

  //1) actualizo mi copo
  posY += velY;
  println( posY );

  //2) dibujo mi copo
  fill( relleno );
  circle( posX, posY, tam );

  //3) reiniciar -> RECICLAR
  if ( posY >= height+tam/2 ) {
    posX = 100;
    posY = -100;
    velY = random( 1, 3 );
    tam = random( 10, 40 );
    relleno = color( 255, random(100, 255) );
  }
}
