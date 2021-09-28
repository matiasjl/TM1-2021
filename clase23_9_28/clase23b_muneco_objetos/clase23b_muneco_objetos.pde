
// Muñeco de nieve cual personaje de videojuego con Programación Orientada a Objetos
// DATO CURIOSO: PApplet == ObjetoClase Processing de Java

//PImage miImg;
Muneco m;  //Muneco es la clase, m es el objeto instanciado

void setup(){
  size( 800, 600 );
  
  //inicializo el objeto > llamo al constructor de la clase!
  //miImg = loadImage("blablabla.png");
  m = new Muneco( width / 2, 400, 200 );

}

void draw(){
  background( 200 );
  
  //llamo a los métodos del Objeto
  //m.moverConMouse();
  m.dibujar();
}

void keyPressed(){
  //llamo a los métodos del Objeto
  m.moverIzq();
  m.moverDer();
}
