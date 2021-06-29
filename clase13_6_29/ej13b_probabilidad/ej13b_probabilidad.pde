
// Paula Díaz

void setup() {
  size(600, 600);
}

void draw() {

  background(0);

  for (int x = 0; x < 60; x++) {
    for (int y = 0; y < 60; y++) {

      //probabilidad
      if ( random(100) < 50 )  //30%
        fill( 255 );
      else  //70%
        fill( 0 );
      
      circle(x*11, y*11, 10 );
    }
  }

  noLoop();  //frean el draw
}

void keyPressed(){
  loop();
}
