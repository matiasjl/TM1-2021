
//creo y declaro el arreglo
int[] listaNumeros = new int[10];


void setup(){
  
  //cargo aleatoriamente numeros en mi lista de numeros
  for( int i = 0 ; i < listaNumeros.length ; i++ ){
    listaNumeros[i] = int( random(10) );
    println( i + ") " + listaNumeros[i] );
  }
  println("");

  int resultado = sumar(listaNumeros);
  println( "La suma del arreglo es: " + resultado );
  
}



//devuelve la suma de todos los números del arreglo
int sumar( int[] x ){  
  int r = 0;
  for( int i = 0 ; i < x.length ; i++ ){
    r += x[i];
  } 
  return r;
} 
