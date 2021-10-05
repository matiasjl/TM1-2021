
// copos de nieve... para el muñeco de nieve! +arreglos

//int c = 500;

//propiedades > variables
float x;
float y;
float tam;
float vel;
color relleno;

//PImage imagen;

void setup() {
  size( 500, 500 );
  noStroke();

  //inicializar las variables
    x = random( -40 , width );
    y = -100;
    tam = random( 10, 40 );
    vel = random( 1, 3 );
    relleno = color( 255, random(50, 150) );
    
    //carga de las imagenes
    //imagen = loadImage( "snowflake-" + 1%50 + ".png" );  //1 = i
    //modificar el tamaño de las imágenes
    //imagen.resize( int(tam), int(tam) );
}

void draw() {
  background( 200 );

  //actualizar
    y = y + vel;
    if ( y > height + tam/2 ) {
      reciclar();
    }


  //dibujar
    //con ellipse
    fill( relleno );
    ellipse( x, y, tam, tam );
    
    //con imagen --> tint modifica la transparencia ;)
    //tint( relleno );
    //image( imagen, x, y );

}

void reciclar() {  //funcion
  x = random( width );
  y = -100;
  tam = random( 10, 25 );
  vel = random( 1, 3 );
  relleno = color( 255, random(50, 150) );
}
