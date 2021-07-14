
// TP3: ilusión óptica interactiva
// + ?: (conditional)
// + rotate/translate
// + lerpColor
// + + con hsb
// + sin para animar

//TODO dato va a ser una variable
int cant, tam;
float grados;
color c1, c2;
float vel;

void setup() {
  size( 500, 500 );
  rectMode( CENTER );
  noStroke();
  colorMode( HSB, 360, 100, 100 );  //probar escalar los valores de hsb

  //valores originales para reset
  cant = 15;
  tam = width / cant;
  grados = 0;
  c1 = c2 = color( 255 );  //tip: igualar valor de dos variables en misma linea
  c2 = color (0 );
  vel = 600;
}

void draw() {
  for ( int i = cant; i > 0; i-- ) {
    //println( i + " " + i%2 );

    //result = test ? expression1 : expression2
    //float r = (i%2 == 0) ? 0 : 255;
    //fill( r );

    if ( i%2 == 0 ) {  //par o impar
      //fill( 0 );  //NEGRO
      float aux = map( frameCount%vel, 0, vel, 0, PI );
      fill( sin(aux)*255 );
    } else {
      //fill( 255 );  //BLANCO
      //aquí lerpColor
      float amount = map( i, cant, 0, 0, 1 );
      color lp = lerpColor( c1, c2, amount );
      fill( lp );
    }

    pushMatrix();
    translate( width/2, height/2 );
    float aux = map( i, cant, 0, 0, grados );
    rotate( radians(aux) );
    tam = width / cant;  //reajusta tamaño segun cantidad de rects
    rect( 0, 0, i*tam, i*tam );
    popMatrix();
  }

  //noLoop();

}

void keyPressed() {
  if ( key == '+' && cant < 50 )
    cant++;
  if ( key == '-' && cant > 0 )
    cant--;

  if ( key == ' ' ) {
    //valores originales para reset
    cant = 15;
    tam = width / cant;
    grados = 0;
    c1 = c2 = color( 255 );  //tip: igualar valor de dos variables en misma linea
    c2 = color (0 );
    vel = 600;
  }
}

void mouseMoved() {
  grados = map( mouseX, 0, width, -90, 90 );
  vel = mouseY;
}

void mousePressed() {
  //c1 = color( random(255), random(255), random(255) );
  //c2 = color( random(255), random(255), random(255) );

  //test con hasb
  c1 = color( random(360), 100, random(70, 100) );
  c2 = color( random(360), 100, random(10, 50) );
}
