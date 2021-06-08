
// PANTALLAS v2: manera CON condicionales (lógica de estados)

int pantalla;  //también podría ser tipo String

void setup() {
  size( 600, 400 );
  textSize( 50 );
  textAlign( CENTER, CENTER );

  //inicio en la primer pantalla
  pantalla = 0;
}

void draw() {  //SEGMENTO el ciclo DRAW en 4 PANTALLAS
  
  //---------------------------------------------------
  if ( pantalla == 0 ) {
    background( 50 );
    text( "Pantalla: " + pantalla, width/2, height/2 );
    
  //---------------------------------------------------
  } else if ( pantalla == 1 ) {
    background( 100 );
    text( "Pantalla: " + pantalla, width/2, height/2 );
  
    
  //---------------------------------------------------
  } else if ( pantalla == 2 ) {
    background( 150 );
    text( "Pantalla: " + pantalla, width/2, height/2 );

    
  //---------------------------------------------------
  } else if ( pantalla == 3 ) {
    background( 200 );
    text( "Pantalla: " + pantalla, width/2, height/2 );
    
    
  }
  
}

void keyPressed(){
  pantalla++;
  println( pantalla );
  
  //reiniciar el ciclo de 0 a 3
  if( pantalla == 4 )
    pantalla = 0;
}
