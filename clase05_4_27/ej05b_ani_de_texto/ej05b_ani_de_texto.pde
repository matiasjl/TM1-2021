
// USO DE TEXTO

//VARIABLE DE TIPO TEXTO
// 'String': cadena de caracteres
// 'Char': sólo un caracter

//1) D E C L A R A C I O N
String comision;
float tamanioDeTexto;

//DECLARO MI VARIABLE DE TIPO FUENTE
PFont FLatoRegular, FLatoBlack;  //TIP: declaro dos variables del mismo tipo en una sola linea

void setup(){
  size( 400, 400 );
  
  //2) A S I G N A C I O N: =
  tamanioDeTexto = 1;  //el tamaño no puede ser zero
  comision = "Comisión 2 Matias";
  
  //CARGAR LA FUENTE DE MI CARPETA DATA
  FLatoRegular = loadFont( "Lato-Regular-48.vlw" );  //si utilice la herramienta de creacion de fuentes de Processing
  FLatoBlack = createFont( "Lato-Black", 150 );      //para crear fuentes en tiempo real sin tenerlas en carpeta data
  
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
  textFont( FLatoBlack );
  textSize( tamanioDeTexto );
  text( "Hola Tecno1!", width/2, height/2 );  //text( "mi texto", posX, posY );
  
  //3) U T I L I Z A C I O N
  fill( 255-(frameCount%255) );
  textSize( 36 );
  textAlign( CENTER, TOP );
  textFont( FLatoRegular );
  text( comision, frameCount, 200 );
  
  //4) A C T U A L I Z A R - V A R I A B L E S
  tamanioDeTexto += 0.5;
  
  print( frameCount );
  print( " - " );
  println( frameCount%255 );
}
