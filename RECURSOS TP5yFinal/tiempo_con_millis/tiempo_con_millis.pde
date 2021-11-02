
// manejo del tiempo en processing
// dos maneneras: frameCount o millis()
// + frameCount = cantidad de frames desde que empezó el programa
// + millis() = milisegundos desde que empezó el programa

int RESET = 0;
int CANTIDAD_DE_MS = 5 * 1000;  //5 segundos

String estado;

void setup() {
  textAlign( CENTER, CENTER );
  textSize( 32 );
  estado = "uno";
}

void draw() {
  background( 0 );

  println( "milisegundos: " + millis() );
  println( "segundos: " + millis()/1000 );

  //logica de estados (alternativa a if: switch)
  if ( estado.equals("uno") ) {
    text("1", width/2, height/2);
  } else if ( estado.equals("dos") ) {
    if ( millis() > RESET+CANTIDAD_DE_MS ) {  //----------------!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      estado = "tres";
    }
    float t = map( millis(), RESET, RESET+CANTIDAD_DE_MS, 0, width );  //tamaño del cuadrado rojo
    fill( 255, 0, 0 );
    rect( 0, 0, t, height );
    text("2", width/2, height/2);
  } else if ( estado.equals("tres") ) {
    text("3", width/2, height/2);
  }
}

void keyPressed() {
  if ( key == ' ' ) {
    estado = "dos";
    RESET = millis();  //----------------!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  }
}
