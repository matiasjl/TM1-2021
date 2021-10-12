
class Copo {

  //CAMPOS (variables)
  float x, y;  //coordenadas
  float tamanio;
  float velocidad;
  PImage imagen;  //reemplaza al 'relleno'


  //CONSTRUCTOR (el "setup" de la clase, el primer método que se ejecuta)
  Copo( float x_, float y_, float t_ ) {
    x = x_;
    y = y_;
    tamanio = t_;  //lo defino mediante parámetro del constructor
    velocidad = random( 2, 5 );

    //imagenes y problemas muejeje
    //1. carga mediante random
    imagen = loadImage("snowflake-"+int(random(50))+".png");
    //2. cambiar el tamaño
    imagen.resize( int(tamanio), int(tamanio) );
    //3. invertir el color
    //
  }
  Copo() {  //constructor SIN parametros
    x = random( tamanio/2, width-tamanio/2 );
    y = random( -100, -1000 );
    tamanio = random(10, 25);  //lo defino mediante parámetro del constructor
    velocidad = random( 2, 5 );

    //imagenes y problemas muejeje
    //1. carga mediante random
    imagen = loadImage("snowflake-"+int(random(50))+".png");
    //2. cambiar el tamaño
    imagen.resize( int(tamanio), int(tamanio) );
    //3. invertir el color
    imagen.filter( INVERT );
  }

  //Métodos (funciones)
  void update() {  //los calculos matemáticos de movimiento
    //y = y + velocidad;
    y += velocidad;
    reciclar();
  }

  void draw() {  //las funciones de dibujo en si
    //ellipse( x, y, tamanio, tamanio );
    image( imagen, x, y );
  }

  void reciclar() {
    if ( y > height+100 ) {
      x = random( width );
      y = -100;
      tamanio = random( 10, 25 );
      velocidad = random( 2, 5 );
    }
  }
}
