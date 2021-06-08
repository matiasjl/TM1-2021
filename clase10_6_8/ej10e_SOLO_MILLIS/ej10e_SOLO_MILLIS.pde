
// Delta time: manejo del tiempo con milisegundos en Processing

int marcaDelTiempo;
int estado = 0;

void setup(){
  textAlign( CENTER, CENTER );
  textSize( 24 );
}

void draw(){
  background( 0 );
  
  if( estado == 0 ){
    text( 0, width/2, height/2 );
    
    //paso a 1 con un clic -------------------------- !
    if( mousePressed ){
      marcaDelTiempo = millis();
      estado = 1; 
      println( "-------> " + marcaDelTiempo );
    }
    
  }else if( estado == 1 ){
    text( 1, width/2, height/2 );
    
    println( millis()-marcaDelTiempo );
    //paso a 0 despues de 5000 ms (5 segundos) ------ ! 
    if( millis()-marcaDelTiempo >= 5000 ){
      estado = 0;
    }
  }
  
  //println( millis() );
  //println( millis()/1000 );
}
