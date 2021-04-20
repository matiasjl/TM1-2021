
/* M3: Animación LINEAL

  Fotogramas
  FPS = Frames Per Second 
  (Fotogramas por segundo)
  
  EJEMPLOS DE USO
  12 / 15 = dibujos animados
  24 = cine audiovisual
  30 FPS = NTSC / HD
  60 / 120 = videojuegos

*/

/* VARIABLES DEL LENGUAJE (Processing)

  mouseX / mouseY = posición x e y del mouse
  width / height = devuelve el ancho y alto de la pantalla
  frameCount = contador de frames del draw
  
  Variables de tipo INT (numeros enteros)
  
*/

void setup(){
  frameRate( 15 );   //por defecto a 60 si la PC lo banca
}

void draw(){  //es justamente el draw quien se repite la cantidad de FPS determinada
  rect( 50, 50, width, height );
}
