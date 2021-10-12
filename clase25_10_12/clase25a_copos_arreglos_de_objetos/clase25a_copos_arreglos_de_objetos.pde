
//arreglo de objetos

int cantidadDeCopos = 100;

//1. declarar el arreglo
Copo[] copos;

//1 y 2 en misma linea:
//Copo[] copos = new Copo[cantidadDeCopos];

void setup() {
  size( 1000, 400 );

  //2. crear el arreglo
  copos = new Copo[cantidadDeCopos];
  
  //saber el largo del arreglo para el condicional limitador del for
  println( copos.length + " == " + cantidadDeCopos );

  //crear cada objeto llamando al constructor del mismo
  //copos[0] = new Copo();
  //copos[1] = new Copo();
  //copos[2] = new Copo();
  //3. inicializar cada objeto (instancia de la clase)
  for( int i = 0 ; i < cantidadDeCopos ; i++ ){  //del 0 al 99
    copos[i] = new Copo();
  }
}

void draw() {
  for( int i = 0 ; i < cantidadDeCopos ; i++ ){  //recorro toda la extensión del arreglo
    copos[i].update();
    copos[i].draw();
  }
}
