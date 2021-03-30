// Hola Tecnología multimedia 1 !

// Introducción al DIBUJO CON PROCESSING

void setup() {  //configurar

  //FUNCION QUE PERMITE ESTABLECER EL TAMANIO DE VENTANA
  //size( anchoVentana, altoVentana );  //--> píxeles, resolución  
  size( 400, 400 );  //unidades en píxeles

  //SINTAXIS DE LAS FUNCIONES:
  //nombreFuncion( parametro1, parametro2, parametro3 );  --> estructura de toda funcion de processing
}

void draw() {  //dibujar

  //CONCLUSIÓN 1: el eje de coordenadas (0,0) de loe ejes cartesianos es en la esquina superior izquierda

  //DIAGONAL DESENDENTE
  //line(x1, y1, x2, y2)
  line(0, 0, 400, 400 );

  //DIAGONAL ASCENDENTE -> no importa cual es el primer y segundo punto!
  //line(400, 0, 0, 400 );  //karina
  line(0, 400, 400, 0 );    //uriel

  //CONCLUSION 2: no hay una sola manera de resolver el mismo problema en programación

  //TRES CIRCULOS
  
  //1 grande / abajo
  //circle( x, y, diam );
  circle( 200, 280, 180 );

  //2 mediana / medio
  circle( 200, 200, 150 );

  //3 chica / arriba
  circle( 200, 120, 120 );

  //CONCLUSION 3: las figuras se dibujan en orden secuencial
}
