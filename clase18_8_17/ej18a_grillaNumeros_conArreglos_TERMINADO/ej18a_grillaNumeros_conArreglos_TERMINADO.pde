
// EJERCICIO EN CLASE - Parte 2
// c. Al hacer click en cada celda, la misma debe incrementar ese número en 1 (arreglos).
// --- el arreglo tiene que ser bidimensional y corresponder a ese dato de tipo numérico;
// d. Utilizar el arreglo en cuestión para pintar la celda en valores de grises

//Original x Lisandro Aguiar
//Comentado x Matias JL

int Cant=5;
int tamCelda;

//1) DECLARACION DEL ARREGLO BIDIMENSIONAL
//int [][] numeros= new int[256][256];  --> OJO
int [][] numeros= new int[Cant][Cant];  //--> 5X5: TAMAÑO DE MI TABLA

int n=0;

void setup() {
  size(400, 400);
  textAlign(CENTER);
  textSize( 36 );
  tamCelda=width/Cant;

  //2) ASIGNACIÓN DE VALORES INICIALES
  for (int x=0; x<Cant; x++) {
    for (int y=0; y<Cant; y++) {
      numeros[x][y]=n;
    }
  }
  //asignacion manual de prueba
  numeros[0][0] = 100;
  numeros[2][2] = 200;
  
}

void draw() {
  fill(255);
  for (int x=0; x<Cant; x++) {
    for (int y=0; y<Cant; y++) {
      fill( numeros[x][y] );
      square(x*tamCelda, y*tamCelda, tamCelda);
    }
  }
  //podría ir en un solo combo for anidado
  for (int x=0; x<numeros.length; x++) {  //numeros.length = 5 (largo de primera dimension)
    for (int y=0; y<numeros.length; y++) { 
      //3) USO / VISUALIZACIÓN DE VALOR EN PANTALLA
      fill( 255 - numeros[x][y] );
      text( numeros[x][y], x*tamCelda+40, y*tamCelda+55);
    }
  }
}

void mousePressed() {
  //recorro las dos dimensiones del arreglo
  for (int x=0; x<numeros.length; x++) {
    for (int y=0; y<numeros.length; y++) {
      
      //evaluación del zona cuadrado / boton
      if (mouseX>x*tamCelda && mouseX<x*tamCelda+tamCelda /* mas el ancho */
       && mouseY>y*tamCelda && mouseY<y*tamCelda+tamCelda /* mas el alto */ ) {
        print("si: ");
        
        //4) MODIFICACIÓN DEL CONTENIDO DEL ARREGLO
        //numeros[x][y] = numeros[x++][y++];  //rara la signacion
        if( numeros[x][y] < 255 )  //condicional "limitador"
          numeros[x][y] = numeros[x][y] + 5;  //ahora si: sumarle uno al CONTENIDO del arreglo, NO a los indices
        println( numeros[x][y] );
        
        //NO ES NECESARIO: NO LA ESTAS UTILIZANDO MAS QUE PARA INICIALIZAR EL ARREGLO
        //n++; 
        
        //NO ES NECESARIO: PORQUE YA ESTA EN EL DRAW
        //text( numeros[x][y], x*tamCelda+50, y*tamCelda+50);
        //fill(numeros[x][y]);
      }
    }
  }
}
