
//funcion CON parametros SIN return: texto( el_texto, tamanio, color, x, y );

void setup(){
  size(400, 400 );
  textAlign( CENTER, CENTER );
}

void draw(){
  texto( "Hola Tecno1", 48, color(0), 200, 150 );
  texto( "Comisión 2", 36, color(255,0,0), 200, 205 );
  texto( "Martes 10HS", 24, color(255), 200, 250 );
}

void texto( String txt, int t, color c, float x, float y ){
  pushStyle();
  textSize(t);
  fill(c);
  text( txt, x, y );
  popStyle();
}
