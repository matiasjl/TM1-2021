
// https://processing.org/reference/lerpColor_.html
// lerpColor(c1, c2, amt)
// amt = valor normalizado, es decir, de rango 0 a 1

color a = color( 255, 0, 75 );
color b = color( 100, 200, 50 );
//color b = 255;  //MAL

void setup() {
  size( 400, 200 );
  noStroke();
}

void draw() {
  background( 200 );

  fill( a );
  circle( 0, 100, 100 );  

  fill( b );
  circle( 400, 100, 100 );

  float amt = map( mouseX, 0, width, 0, 1 );  //normalizo la pos x del mouse
  color aux = lerpColor(a, b, amt);  //aquí la magia
  fill( aux );
  println( aux );
  circle( mouseX, 100, 70 );

  for ( int i = 0; i < 10; i ++ ) {
    float m = map( i, 0, 10, 0, 1 ); 
    color l = lerpColor(a, b, m);
    fill( l );
    rect( i * width/10, 150, width/10, 50 );
  }
}
