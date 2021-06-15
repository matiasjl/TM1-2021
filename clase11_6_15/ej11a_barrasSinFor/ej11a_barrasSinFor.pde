
//Estructuras repetitivas: CICLO FOR

int ancho;

void setup(){
  size( 400, 200 );
  
  ancho = width / 10;  //=40
}

void draw(){
  rect(0, 0, ancho, height );
  rect(40, 0, ancho, height );
  rect(80, 0, ancho, height );
  rect(120, 0, ancho, height );
  rect(160, 0, ancho, height );
  rect(200, 0, ancho, height );
  rect(240, 0, ancho, height );
  rect(280, 0, ancho, height );
  rect(320, 0, ancho, height );
  rect(360, 0, ancho, height );

  //CONCLUSION_1: 10 barras ocupan el ancho total de la pantalla
  //CONCLUSIÓN_2: el valor en X es el único que cambia, el resto igual
  //CONCLUSIÓN_3: rect(NUM_QUE_CAMBIA, 0, ancho, height );

}
