
//Mauro Scaffidi

void setup() {
  size(600, 600);
  background(10);
}

void draw() {
  for (int i= 0; i< 600; i +=15) {
    
    //MOD
    if( i < 300 )
      strokeWeight( map(i, 0, 300, 0, 15 ) );
    else
      strokeWeight( 1 );
      
    stroke(0, 255, 0);
    line( i, 0, i, 600);
  }
}
