//2a. armar un array de 100 posiciones,
//con valores aleatorios de color (0-255)
//--> int grises o color rgb

int numeroPresionado;

//1) declaro el arreglo + determino tamaño
int[] colores = new int[100];
//falta asignar valores!!!

void setup(){
  frameRate(5);  //NO SE HACE
  textSize( 40 );
  textAlign( CENTER, CENTER );
  
  //2) asignar valores a las posiciones del arreglo MANUALMENTE
  colores[0] = 0;
  colores[1] = 100;
  colores[2] = 150;
  colores[3] = 200;
  colores[4] = 220;
  colores[5] = 255;
  //asi sucesivamente...
  
  //lo mismo, pero AUTOMATICAMENTE: recorro mi lista/arreglo con un ciclo for
  for( int i = 0 ; i < 100 ; i++ ){
    colores[i] = int(random(255));
  }
  
}

void draw(){
  // 2b. aplicarlos a una figura que vaya cambiando el color (recorriendo el arreglo).
  
  //3) Utilización / actualización
  background( colores[numeroPresionado] );  //recorrido manualmente con numeros teclado
  
  //solución real al ejercicio
  background( colores[frameCount%100] );
  text( frameCount%100, 50, 50 );
  println( frameCount%100 );
  
}

void keyPressed(){
  numeroPresionado = keyCode-48;
  println(numeroPresionado);
}
