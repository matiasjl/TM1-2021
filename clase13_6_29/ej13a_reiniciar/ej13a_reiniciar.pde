
// REINICIAR = VOLVER A ESTADO ORIGINAL LAS VARIABLES

float posX;

void setup(){
  size( 600, 200 );
  posX = 20;
  
  // PROBLEMAS DE LLAMAR DOS O MAS VECES AL SETUP
  // miImagen = loadImage("fotito.jpg");
  // creación de instancias de objetos...
}

void draw(){
  background( 255 );
  ellipse( posX, 100, 50, 50 );
  
  //stop = cuando esté al centro de la pantalla no te muevas mas = CONDICION
  if( posX < width/2 )  //si posX es menor al centro de la pantalla
    posX+=0.5;  //entonces sumo 0.5
}

void keyPressed(){
  //setup();  // -- NO ES BUENA FORMA
  
  //PARA REINICIAR: volver al estado original las variables
  posX = 20;
}
