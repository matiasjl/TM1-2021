
//MANEJO DEL TIEMPO
// con frameCount (o contador)

int tiempo;  //variable de tipo contador

void setup(){
  tiempo = 0;
}

void draw(){
  tiempo = tiempo + 1;  //hace exactamente lo mismo que frameCount
  println( tiempo ); 
}

void keyPressed(){
  tiempo = 0;  //RESET del tiempo: cada vez que lo llamo vuelve a cero
}
