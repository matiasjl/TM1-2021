
// Lisandro Aguiar

void setup() {
  size(600, 600);
}

void draw() {

  for (int a=0; a<600; a+=60) {
    for ( int i=0; i<600; i+=60) {
      fill(0);
      stroke(255);
      //strokeWeight(30);
      strokeWeight(mouseX/10);  //MOD
      rect(i, a, 60, 60);
    }
  }
}
