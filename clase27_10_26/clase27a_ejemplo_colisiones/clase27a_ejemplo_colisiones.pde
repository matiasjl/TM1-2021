
//colisiones para minijuegos

float x1, y1, x2, y2, t, v;

void setup(){
  size(800, 400 );
  
  x1 = 0;
  y1 = 150;
  x2 = 800;
  y2 = 250;
  
  t = 150;  //diametro, osea que el radio es 75
  v = 1;
}

void draw(){
  background( 255 );
  
  //colision
  float d = dist(x1, y1, x2, y2);
  println( d );
    if( d < 150 ){ //aquí el rango de la colisión.
    fill(255, 0, 0 );
  }else{
    fill( 255 );
  }
  
  //actualización de posiciones
  x1 += v;
  x2 -= v;
  
  //dibujo
  ellipse( x1, y1, t, t );
  ellipse( x2, y2, t, t );
  //visualizo linea de distancia entre centros de las ellipses
  //line(x1, y1, x2, y2 );  
}

void keyPressed(){
  v = 0;
}
void keyReleased(){
  v = 1;
}
