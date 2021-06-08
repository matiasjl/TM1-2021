
// PANTALLAS v1: manera SIN condicionales

float mov, vel;

void setup(){
  size( 600, 400 );
  
  //propiedades de los textos
  textAlign( CENTER, CENTER );
  
  //inicializo las variables
  mov = height + 100;
  vel = 1;  //--------------------> TIP: ATENTOS A ESTE VALOR
}

void draw(){
  background( 100 );
  //1) dibujo los elementos: cambio tamaños para mostrar jerarquias
  textSize( 50 );
  text( "Hola Tecno1!", width/2, mov );
  textSize( 30 );
  text( "Comisión 2", width/2, mov+500 );  //como aparece "después"... podríamos decir que es una segunda pantalla
  
  //2) actualizo las variables
  mov = mov - vel;
  println( mov );
}
