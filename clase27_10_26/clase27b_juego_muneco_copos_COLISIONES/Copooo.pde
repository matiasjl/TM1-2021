
class Copo {

  //CAMPOS (variables)
  float x, y;  //coordenadas
  float tamanio;
  float velocidad;
  PImage imagen;  //reemplaza al 'relleno'
  //NUEVO
  float opacidad;
  float ang;

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
    //no lo hago en este onstructor
  }
  Copo( boolean negro ) {  //constructor SIN parametros
    x = random( tamanio/2, width-tamanio/2 );
    y = random( -100, -1000 );
    //tamanio = random(10, 25);
    velocidad = random( 1, 4 );
    //NUEVO
    tamanio = 41 - (velocidad * 10);  //idea = cuato más rápida más chica es...
    opacidad = color( 255, map(velocidad, 1, 4, 200, 50 ) );  //más lenta = más grande = más 'lejos' = MAS TRANSPARENTE
    ang = 0;//radians(random(360));  //frecuencia: comienzo desde fases diferentes para evitar patron evidente de onda masiva 

    //imagenes y problemas muejeje
    //1. carga mediante random
    imagen = loadImage("snowflake-"+int(random(50))+".png");
    //2. cambiar el tamaño
    imagen.resize( int(tamanio), int(tamanio) );
    //3. invertir el color
    if( negro ){
      //no hago nada, xq las img originales son negras (cenizas)
    }else{
      //entonces invierto la imagen a blanco (copos)
      imagen.filter( INVERT );
    }
    
  }

  //Métodos (funciones)
  void update() {  //los calculos matemáticos de movimiento
    //NUEVO
    x += sin(ang) * velocidad; //le sumoresto a x el seno de ang(ulo) multiplicado por la vel(olcidad) que funciona como amplitud
    ang += radians(velocidad);  //sumo el incremento en grados correspondientes (podría ser 1, pero también utilizo la velocidad)

    //y = y + velocidad;
    y += velocidad;
    if ( y > height+100 ) {  //CORRECCION: LA CONDICION LA HAGO ACÁ PARA PODER UTILIZAR EL METODO RECICLAR SIN LA MISMA
      reciclar();
    }
  }

  void draw() {  //las funciones de dibujo en si
    //ellipse( x, y, tamanio, tamanio );
    //image( imagen, x, y );

    //con imagen y ROTACIÓN
    pushMatrix();
    translate( x, y );
    rotate( ang );
    image( imagen, 0, 0 );
    popMatrix();
  }

  void reciclar() {
    //if ( y > height+100 ) {  //AQUÍ EL PROBLEMA PARA LLAMAR ESTE METODO DESDE COLISION DEL MUNECO 
      x = random( width );
      y = -100;
      //tamanio = random( 10, 25 );
      //velocidad = random( 2, 5 );
    //}
  }
  
  //IMPORTANTE: ACCEDER A UNA VARIABLE DE LA CLASE
  
  float getX(){
    return x;
  }
  float getY(){
    return y;
  }
}
