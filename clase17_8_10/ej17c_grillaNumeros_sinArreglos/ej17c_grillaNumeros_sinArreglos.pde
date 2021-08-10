
// EJERCICIO EN CLASE - Parte 1
// a. Armar una grilla de 5 filas y 5 columnas (con for anidado).
// b. Cada celda debe mostrar el número 0 (con la función text).

int cant = 5;
int tamCelda;

void setup() {
  size(500, 500);
  textSize(20);
  textAlign(CENTER);
  tamCelda = width/ cant;
}

//Nayla Aguilar
/*
void draw() {
  for (int x = 0; x < cant; x++) {
    for (int y = 0; y < cant; y++) {
      fill(255);
      square(x*tamCelda, y*tamCelda, tamCelda);
      fill(0);
      text("0", x*tamCelda+50, y*tamCelda+50);
    }
  }
}
*/

//Agustina Gil Tudor
void draw(){
  for (int x=0; x<width; x+=100) {
    for (int y=0; y<height; y+=100) {
      fill(255);
      rect(x, y, 100, 100);
      fill(0);
      textSize(20);  //idealmente en el setup
      text("0", x+50, y+50);
    }
  }

}
