
//Agustina Gil Tudor

void setup() {

  size(400, 400);
  rectMode(CENTER);  //MOD
}

void draw() {

  background(255);

  for (int i=10; i<400; i+=40) {

    for (int c=10; c<400; c+=40) {
      
      //MOD
      //float d = dist(i+10, 0, 200, 0 );
      //float m = map( d, 0, 200, 0, 255 );
      //fill( m );
      //stroke( m );
      fill(0);
      strokeWeight(5);
      ellipse(i+10,c+10, 40, 40);

      fill(255);
      //strokeWeight(3);
      rect(i+10,c+10, 20, 20);
      //rect(i+10,c+10, 20, 20);  //MOD

    }

  }

}
