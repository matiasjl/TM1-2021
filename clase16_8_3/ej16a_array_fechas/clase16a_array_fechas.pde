
//CON VARIABLES = declaración, asignación, utilización
//int date0 = 1919;
//int date1 = 1940;
//int date2 = 1975;
//int date3 = 1976;
//int date4 = 1990;

//CON ARREGLOS
//1a)DECLARACIÓN DEL ARRAY
int[] dates;

//1) DECLARACIÓN y CANTIDAD
//int[] dates = new int[5];;

//1+2) DECLARACIÓN y ASIGNACIÓN
//int[] dates = { 1919, 1940, 1975, 1976, 1990 };

void setup(){
  
  //imprimo variables
  //println( "0: " + date0 );
  //println( "1: " + date1 );
  //println( "2: " + date2 );
  //println( "3: " + date3 );
  //println( "4: " + date4 );
  
  //1b) DEFINIR CANTIDAD DE LUGARES
  dates = new int[5];
  
  //2) ASIGNAR VALORES A MI ARREGLO
  dates[0] = 1919;
  dates[1] = 1940;
  dates[2] = 1975;
  dates[3] = 1976;
  dates[4] = 1990;
  
  //3) UTILIZACIÓN
  println(dates.length);
  println("");
  for( int n = 0 ; n < dates.length ; n++ ){
    println( dates[n] );
  }
  
}

void draw(){
}
