// ANIMACION LINEAL: con variables de Usuario

//1) VARIABLES: DECLARACIóN
int posXRojo;
int posXVerde;
float tamanioCuadrado;

void setup(){  //CONFIGURACION
  size( 600, 600 );
  colorMode( RGB );  //por defecto es asi
  rectMode( CENTER );  //CORNER, CENTER, CORNERS
  noStroke();

  //definir cantidad de FRAMES por SEGUNDO del DRAW
  frameRate( 30 );
  
  //2) VARIABLES: ASIGNACIóN
  posXRojo = 0;
  posXVerde = 600;
  tamanioCuadrado = 0.0;  //porque float
}

void draw(){  //se va a ejecutar a 30 FPS (como se definió en frameRate)
  //para no dejar rastro / tener feedback de los frames anterior
  background( 0 );
  
  //circulo rojo
  fill( 200, 0, 0 );
  ellipse( posXRojo, 0, 600, 600 );
  
  //circulo verde
  fill( 0, 200, 0 );
  ellipse( posXVerde, height, 600, 600 );
  
  //cuadrado azul
  fill( 0, 0, 200, tamanioCuadrado/4 );  //atentis a esta operacion de DIVISION
  rect( width/2, height/2, tamanioCuadrado, tamanioCuadrado );
  
  //3) VARIABLES: ACTUALIZACIóN
  posXRojo = posXRojo + 1;  //suma 1 a la variable
  posXVerde--;  //resta 1, de manera simplificada
  //tamanioCuadrado = tamanioCuadrado + 0.5;
  tamanioCuadrado += 1.5;  //forma simplificada de INCREMENTO
  
  println( "tamanioCuadrado: " + tamanioCuadrado );

}
