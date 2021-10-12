class Copo {
  //CAMPOS (variables)
  float x, y; //coordenadas
  float tam;
  float vel;
  PImage imagen;

 Copo() {
    x = random( tam/2, width -tam/2 );
    y = random( -100, -1000 );
    tam = random(10, 25); // lo defino mediante  parametro del constructor
    vel = random( 2, 5 );

    //1.carga de imagen
    imagen = loadImage("snowflake-pngrepo-com.png");
    //2.cambio de tamaño
    imagen.resize(int(tam), int(tam));
    //3.invertir el color
    imagen.filter( INVERT );
  }
  //MÉTODOS (funciones)
  void update() { 
     y = y + vel;
    reciclar();
  }

  void draw() { //funciones de dibujo
    image(imagen, x, y);
  }

  void reciclar() {
    if( y > height+100){
    x = random( -40, width);
    y = -100;
    tam = random(10, 25);
    vel = random(2, 5);
    }
  }
}
