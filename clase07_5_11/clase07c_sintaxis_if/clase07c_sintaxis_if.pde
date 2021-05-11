
//CONDICIONALES: sintaxis if

/*
  if( condicion ){
    //resultado: se ejecuta si condicion == true
  }

*/

void draw(){
}

void keyPressed(){  //se ejecuta CUANDO se presiona CUALQUIER tecla 
  background( 255 );

  if( key == 'r' ){  //SI LA TECLA APRETADA ES 'r'... TRUE/FALSE
    println( "se apreto la 'r'" );
    background( 255, 0, 0 );
  }
  if( key == 'g' ){
    println( "se apreto la 'g'" );
    background( 0, 255, 0 );
  }
  if( key == 'b' )
    background( 0, 0, 255 );
    //ATENCION: si el resultado es una sola linea, puedo evitar llaves
  
  //voy a escribir la letra presiona
  fill( 0 );
  textAlign( CENTER, CENTER );
  textSize( 50 );
  text( key, width/2, height/2);
  println( "se apreto el teclado" );
}
