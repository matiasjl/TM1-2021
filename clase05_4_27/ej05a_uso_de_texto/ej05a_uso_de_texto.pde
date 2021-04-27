
// USO DE TEXTO

//VARIABLE DE TIPO TEXTO
// 'String': cadena de caracteres
// 'Char': sólo un caracter

//1) D E C L A R A C I O N
String comision;
int numero;

void setup(){
  size( 400, 400 );
  
  //2) A S I G N A C I O N: =
  numero = 1;
  comision = "Comisión 2 Matias";
  
  //primer linea en consola
  println( "hola soy una cadena de caracteres" );
  //segunda linea en consola
  print( "La variable 'comision' vale: " );
  println( comision );
}

void draw(){
  background( 255 );
  stroke( 0, 255, 0 );
  line( width/2, 0, width/2, height );
  line( 0, height/2, width, height/2 );

  //textAlign( alineacionHorizontal, alineacionVertical );
  //alineacionHorizontal: LEFT, CENTER, or RIGHT
  //alineacionVertical: TOP, BOTTOM, CENTER, or BASELINE
  textAlign( CENTER, BOTTOM );
  
  //dibujo un texto fijo sin usar variables
  fill( 0 );
  textSize( 48 );
  text( "Hola Tecno1!", width/2, height/2 );  //text( "mi texto", posX, posY );
  
  //3) U T I L I Z A C I O N
  fill( 100 );
  textSize( 24 );
  textAlign( CENTER, TOP );
  text( comision, 200, 200 );
  
  
}
