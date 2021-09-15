
//CASO 3: carga de textos desde archivo txt (por Juan Lutz)

String[] lineas;  //NO se le define el largo
int lin;

void setup() {
  size(800, 300);
  textAlign(CENTER, CENTER);
  lin = 0;
  
  //al arreglo de lineas entero (es decir, NO a una posición), le cargo el archivo txt.
  lineas = loadStrings("ejemploClase.txt");  //--> AQUÍ LA MAGIA (simple, no?)
  
  textSize(24);
}

void draw() {
  background(255);
  fill(0);
  //text(lineas[lin], width/2, height/2);
  text(lineas[lin] + "\n Salto de linea dentro del text()", width/2, height/2);
}

void mousePressed() {
  if (lin < lineas.length-1) {
    lin++;
  }
}

void keyPressed() {
  if (key == 'r') {
    lin=0;
  }
}
