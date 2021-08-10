
// un for anidado para hacer una grilla
// evento mousePressed() para los clic  --> necesitamos arreglos
// -- condicional if + zonaBotonRectangular

int cantidad = 10;
int tamCelda;

void setup(){
  size( 400, 400 );
  tamCelda = width / cantidad; //50
}

void draw(){
  for( int x = 0 ; x < cantidad ; x++ ){
    for( int y = 0 ; y < cantidad ; y++){
      if( mouseX>x*tamCelda && mouseX<x*tamCelda+tamCelda && mouseY>y*tamCelda && mouseY<y*tamCelda+tamCelda ){
        fill(0);
      }else{
        fill(255);
      }
      square( x*tamCelda, y*tamCelda, tamCelda );
    }
  }
}
