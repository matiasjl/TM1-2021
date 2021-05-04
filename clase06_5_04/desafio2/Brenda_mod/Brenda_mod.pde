void setup(){

  size(400,400); 

}

void draw(){ 

 background(179, 204, 255);

 

 fill(102, 102, 153, 50);

 noStroke();

 rectMode(CENTER);

 rect(frameCount,frameCount,300,300);

 

 fill( 204, 255, 238, 100 );

 rect(400-frameCount,400-frameCount,300,300);

 

 fill(255);

 textSize(100);

 textAlign(CENTER);

 text("BRENDA",200,20+frameCount);



 fill( frameCount%255 );  //con % hago ciclico el color

 textSize( abs(260-frameCount) );  //me aseguro que sea siempre positivo

 textAlign(CENTER);

 text("SANTILLI",200, 400-frameCount );

}
