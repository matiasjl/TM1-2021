
//funciones CON parámetros CON return: sumar(a,b) y multiplicar(a,b);

void setup(){
  println( multiplicar(2,2) );
  println( sumar(100,50) );  
}

// funcion multiplicar dos valores
float multiplicar( float a, float b ){
  return a * b;
}

//funcio sumar dos valores
int sumar(int a, int b){
  int r = a + b;
  return(r);
}


//-------------------------------------------- EXTRA
//no llegamos a verlo en clase, ni siquiera lo probe jaja! ¿Quien lo testea y me cuenta si funciona..?
int sumar( int[] x ){  
  int r = 0;
  for( int i = 0 ; i < x.length ; i++ ){
    r += x[i];
  } 
  return r;
} 
