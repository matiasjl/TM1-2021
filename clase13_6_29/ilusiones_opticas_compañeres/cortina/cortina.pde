
// Román Cortina

int posX, posY, posX2, posY2;



void setup() {

  size(800, 600);

  background(255, 0, 0);

}



void draw() {

  stroke(0);

  strokeWeight(3);

  fill(255);

  for (int posX=25; posX<=width-25; posX+=50) {

    for (int posY=25; posY<=height-25; posY+=50) {

      circle(posX, posY, 50);

    }

  }

  rectMode(CENTER);

  noStroke();

  fill(0);

  for (int posX2=25; posX2<=width-25; posX2+=50) {

    for (int posY2=25; posY2<=height-25; posY2+=50) {

      rect(posX2, posY2, 20, 20);

    }

  }

}
