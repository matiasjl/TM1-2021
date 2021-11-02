
int restar;

void setup(){
  size(400,400);
  textSize(32);
  
  frameRate(60);  //fijo el frameRate
}

void draw(){
  background( 255 );
  fill( 0 );
  
  //TIEMPO manejado x frameCount
  //frameCount = cantidad de fotogramas desde que inicio el programa
  text( "frameCount = " + frameCount, 50, 50 );
  text( "frameCount/60 = " + frameCount/60, 50, 100 );
  
  //TIEMPO manejado x millis()
  text( "millis() = " + millis(), 50, 200 );
  text( "millis()/1000 = " + millis()/1000, 50, 250 );
  text( "restar = " + restar/1000, 50, 300 );
  text( "millis()-restar = " + (millis()-restar)/1000, 50, 350 );
  
}

void keyPressed(){
  restar = millis();
}