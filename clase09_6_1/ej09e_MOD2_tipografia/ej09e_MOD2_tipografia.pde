
//FUENTES PERSONALIZADAS

PFont miTipo;

void setup(){
  miTipo = createFont( "minecrafter.ttf", 50 );   //IMPORTANTE: el archivo *.ttf debe estar dentro de la carpeta data 
}

void draw(){
  background( 255 );
  
  fill( 0 );
  textAlign( CENTER, CENTER );  
  textFont( miTipo );  //IMPORTANTE: aquí selecciono la variable de tipo PFont a utilizar
  text( "Mi Texto", width/2, height/2);

}
