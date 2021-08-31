
//funcion CON parametros CON return: zona( x, y, ancho, alto);

void setup(){
  size( 300, 300 );
}

void draw(){
  if( zona(100, 100, 50, 150) ){
    fill(0);
  }else{
    fill(255);
  }
  
  rect(100, 100, 50, 150 );
}

boolean zona( float x, float y, float a, float h ){
  boolean r;
  if( mouseX > x && mouseX < x+a && mouseY > y && mouseY < y+h ){
    r = true;
  }else{
    r = false;
  }
  return r;
}
