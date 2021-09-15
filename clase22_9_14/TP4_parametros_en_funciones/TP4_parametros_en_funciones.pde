
//CASO 2: paràmetros en funciones y uso de push/popStyle();

PImage fondo1;  //podrían ser arreglos
String texto1;

void setup(){

}

void draw(){
  dibujarPantalla( fondo1, texto1);  //acá llamo a la función
    
}

void dibujarPantalla( PImage fondo, String titulo ){  //-> los parametros pueden ser de distintos tipos de datos (¡incluso arreglos!)
  pushStyle();
  
  image( fondo, 0, 0, width, height );
  text( titulo, 200, 100 );
  
  popStyle();  //--> importante para resetear los estilos
}
