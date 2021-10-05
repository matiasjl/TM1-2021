
Copo c, v, b;  //declaro 3 OBJETOS llamadoS "c,v,b" de la CLASE "Copo"

void setup() {

  size( 800, 400 );

  //c = new Copo();  //llamo al CONSTRUCTOR sin PARAMETROS de la CLASE "Copo"
  c = new Copo( 100, -100, 15 );  //llamo al CONSTRUCTOR con PARAMETROS de la CLASE "Copo"
  v = new Copo();
  b = new Copo();
}

void draw() {
  background( 128 );
  
  //llamo a los MÉTODOS de la clase COPO
  //objeto.metodo();

  //actualizo
  c.update();
  //c.reciclar();  //no es necesario: lo llamo desde el update
  v.update();
  b.update();
  
  //dibujo
  c.draw();
  v.draw();
  b.draw();
}
