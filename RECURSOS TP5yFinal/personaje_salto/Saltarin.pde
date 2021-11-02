class Saltarin {

  float posx, posy;
  float tam;

  float vel = 8;  //velocidad: para emular gravedad
  boolean saltando = false;

  Saltarin( float x, float y ) {
    posx = x;
    posy = y;
    tam = 50;
  }

  void dibujar() {
    fill(128);
    ellipse(posx, posy, tam, tam);
  }

  void saltar() {
    if ( saltando ) {
      posy = posy - vel;
      vel = vel - 0.2;  //0.2 = indice de friccion

      if (posy >= 300 ) {  //si regresa al piso, resetea variables
        posy = 300;
        vel = 8;
        saltando = false;  //importante: para que no vuelva a saltar automaticamente
      }
    }
  }
  
  void teclas(){
    if ( key == ' ' )
      saltando = true;
  }
}