
// TIEMPO v2: manejar la lógica de estados por tiempo con MILLIS

int pantalla;  //también podría ser tipo String
int marcaDelTiempo;
int tiempoDePantalla;

void setup() {
  size( 600, 400 );
  textSize( 50 );
  textAlign( CENTER, CENTER );

  //inicio en la primer pantalla
  pantalla = 0;
  marcaDelTiempo = 0;
  tiempoDePantalla = 5000;  //cantidad de segundos que quiero que dure la pantalla
}

void draw() {  //SEGMENTO el ciclo DRAW en 4 PANTALLAS
  background( 255 );
  //println( millis() );
  
  //-------------------------------------------------------------------------------------- ESTADO!
  if ( pantalla == 0 ) {
    background( 50 );
    text( "Pantalla: " + pantalla, mouseX, height/2 );
    
    //if( frameCount > (5*60) ){  //5 = segundos, 60 = frameRate (cuadros por segundo)
    if( millis()-marcaDelTiempo > tiempoDePantalla ){  //--------------------------------- EVENTO! CAMBIO DE ESTADO
      marcaDelTiempo = millis();  //IMPORTANTE: DEBO resetear la marcaDelTiempo
      pantalla = 1;
      println( "marcaDelTiempo: " + marcaDelTiempo );
    }
    
  //-------------------------------------------------------------------------------------- ESTADO!
  } else if ( pantalla == 1 ) {
    background( 100 );
    text( "Pantalla: " + pantalla, mouseX, height/2 );
    
    //if( frameCount > (10*60) ){
    if( millis()-marcaDelTiempo > tiempoDePantalla ){  //--------------------------------- EVENTO! CAMBIO DE ESTADO
      marcaDelTiempo = millis();  
      pantalla = 2;
      println( "marcaDelTiempo: " + marcaDelTiempo );
    }

  //-------------------------------------------------------------------------------------- ESTADO!
  } else if ( pantalla == 2 ) {
    background( 150 );
    text( "Pantalla: " + pantalla, mouseX, height/2 );

   
    //if( frameCount > (15*60) ){
    if( millis()-marcaDelTiempo > tiempoDePantalla ){  //--------------------------------- EVENTO! CAMBIO DE ESTADO
      marcaDelTiempo = millis();  
      pantalla = 3;
      println( "marcaDelTiempo: " + marcaDelTiempo );
    }
   
  //-------------------------------------------------------------------------------------- ESTADO!
  } else if ( pantalla == 3 ) {
    background( 200 );
    text( "Pantalla: " + pantalla, mouseX, height/2 );
    
    //if( frameCount > (20*60) ){
    if( millis()-marcaDelTiempo > tiempoDePantalla ){  //--------------------------------- EVENTO! CAMBIO DE ESTADO
      marcaDelTiempo = millis();  
      pantalla = 0;  //acá SI vuelvo a la primer pantalla (modo loop )
      println( "marcaDelTiempo: " + marcaDelTiempo );
    }
    
  }
  
  
}
