class Juego {

  int t_base;  //inicio del conteo en ms (milisegundos)
  int t_cant;  //cantidad de tiempo a restar en ms
  int time = 0;  //variable que devolvera el tiempo

  Juego( int tc ) {
    t_base = millis();  //inicializo reloj
    t_cant = tc;  //
  }

  void play() {
    //AQUI LA MAGIA
    time = (t_base + t_cant) - millis();  //time maneja el resultado en si
    
    if ( time >= 0 ) {
      text(time/1000, 50, 100);  // dividido 1000: lo devuelve en segundos
    } else {
      text("Time es 0!", 50, 100);
      text("Reiniciar? CLIC", 50, 150);
      if (mousePressed) {  //restauro valores originales, es decir, reinicio
        t_base = millis();
        t_cant = 10000;
      }
    }
  }
}