
// Paula Díaz

void setup() {
  size(600, 600);
}

void draw() {

  background(0);

  for (int x = 0; x < 60; x++) {
    for (int y = 0; y < 60; y++) {
      
      float d = dist( width/2, height/2, x*11, y*11 );
      fill ( dist( width/2, height/2, x*11, y*11 ) );
      circle(x*11, y*11, 10 );
    }
  }
  
  float d = dist( width/2, height/2, mouseX, mouseY );
  println( d );
}
