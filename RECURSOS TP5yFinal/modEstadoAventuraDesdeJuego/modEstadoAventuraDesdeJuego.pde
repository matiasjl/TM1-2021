
/* JL com 2
   recursos tpfinal
   tmm1 FdA UNLP 2020
*/

Aventura aventura;

void setup(){
  size( 400, 400 );
  textSize( 32 );
  textAlign( CENTER, CENTER );
  
  aventura = new Aventura();
}


void draw(){
  background( 0 );
  aventura.draw();
}
