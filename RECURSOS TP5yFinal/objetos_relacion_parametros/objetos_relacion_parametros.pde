
// pseudocodigo para pasar instancias desde clase padres a hijos

Aventura a;

void setup(){
  a = new Aventura();
  frameRate(1);
}

void draw(){
  a.dibujar();
}

void keyPressed(){
  a.teclas(a);  //aventura "se conoce a si misma" al pasarle a la Clase un Objeto de su tipo.
}
