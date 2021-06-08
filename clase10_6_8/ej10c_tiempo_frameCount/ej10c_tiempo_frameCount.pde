
// TIEMPO v1: manejar la lógica de estados por tiempo con FRAMECOUNT

int pantalla;  //también podría ser tipo String

void setup() {
  size( 600, 400 );
  textSize( 50 );
  textAlign( CENTER, CENTER );

  //inicio en la primer pantalla
  pantalla = 0;
}

void draw() {  //SEGMENTO el ciclo DRAW en 4 PANTALLAS
  background( 255 );
  println( frameCount );
  
  //---------------------------------------------------
  if ( pantalla == 0 ) {
    background( 50 );
    text( "Pantalla: " + pantalla, width/2, height/2 );
    
    if( frameCount > (5*60) ){  //5 = segundos, 60 = frameRate (cuadros por segundo)
      pantalla = 1;
    }
    
  //---------------------------------------------------
  } else if ( pantalla == 1 ) {
    background( 100 );
    text( "Pantalla: " + pantalla, width/2, height/2 );
    
    if( frameCount > (10*60) ){
      pantalla = 2;
    }

  //---------------------------------------------------
  } else if ( pantalla == 2 ) {
    background( 150 );
    text( "Pantalla: " + pantalla, width/2, height/2 );

   
    if( frameCount > (15*60) ){
      pantalla = 3;
    }
   
  //---------------------------------------------------
  } else if ( pantalla == 3 ) {
    background( 200 );
    text( "Pantalla: " + pantalla, width/2, height/2 );
    
    if( frameCount > (20*60) ){
      pantalla = 4;  //acá podría hacer que vuelva a la primer pantalla
    }
    
  }
  
  
}
