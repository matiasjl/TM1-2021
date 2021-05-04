String nombre="Ayus";
int posX, posY;
int col;
void setup() {
  size(500, 500);
  col=0;
  background(0, 0, 0);
  frameRate( 10 );  //siempre en setup

}
void draw () {
  //background(0, 0, 0);
  fill( 0, 5 );
  rect( 0, 0, width, height );  //alternativa al background
    
  frameRate( (mouseX/10)+5 ); //control de velocidad x FR
  
  textSize(50);
  textAlign(CENTER);
  fill(52, 52, 52);
  text("A", random(500), random(0, 500));  //random no necesita 0
  text("y", random(500), random(0, 500));
  text("u", random(500), random(0, 500));
  text("s", random(500), random(0, 500));
  posX++;
  posY++;
  fill(col, col, col);
  col++;
  text(nombre, posX, posY);
}
