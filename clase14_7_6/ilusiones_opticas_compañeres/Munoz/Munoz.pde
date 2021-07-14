
//Anabella Muñoz Candia (versión 1 de 3 )

color ColorFondo=0;  //color negro

void setup () {
  size (800, 800);
}

void draw () {
  background (128);  //gris: no se ve, se tapa por la imagen creada

  for (int i = 0; i < 40; i++)
  {
    //for (int x=0; x < 40; x++)
    //{
      strokeWeight(1);
      fill(255);
      rect (i*20, 0, i+20, height);  //blancos

      fill (0);
      //rect (x*20, 0, -20 + x, height);  //negros
      rect (i*20, 0, -20 + i, height);  //MOD: con un solo for

      noLoop();
    //}
  }
}
