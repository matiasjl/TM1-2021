
//CASO 1: arreglo de imagenes y carga con ciclos for

PImage[] fondosDePantallas = new PImage[5];  //--> 5 ES LA CANTIDAD DE MI ARREGLO
PImage[] botonesFlechas = new PImage[3];

void setup(){
  
  //carga de magenes individualmente
  //fondosDePantallas[0] = loadImage( "miFondo00.png" );
  //fondosDePantallas[1] = loadImage( "miFondo01.png" );
  //fondosDePantallas[2] = loadImage( "miFondo02.png" );
  //fondosDePantallas[3] = loadImage( "miFondo03.png" );
  //fondosDePantallas[4] = loadImage( "miFondo04.png" );

  //carga de imagenes en masa -> con ciclo for
  for( int i = 0 ; i < fondosDePantallas.length ; i++ ){
    fondosDePantallas[i] = loadImage( "miFondo0" + i + ".png" );  // "+" en datos tipo String concatena (es decir, los une)
  }
  println( "Cantidad de pantallas: " + fondosDePantallas.length);

}

void draw(){
  
  //acá recién estoy visualizando la primer imagen de mi arreglo
  image( fondosDePantallas[0], 0, 0, width, height );

}
