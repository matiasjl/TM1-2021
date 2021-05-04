char l;

char i;

char s;

char a;

char n;

char d;

char r;

char o;

char u;

char g;

float tamanio;

float py;

int contadorParaAbajo = 400;

void setup() { 
  size(400, 400);

  background(255);

  colorMode(HSB, 360, 100, 100);

  frameRate(24);
}

void draw() {
  l='L';
  i='I';
  s='S';
  a='A';
  n='N';
  d='D';
  r='R';
  o='O'; 
  u='U'; 
  g='G'; 
  background(360); 

  py=200; 

  tamanio=frameCount%400;   //eltexSize nunca puede ser 0.0 (error que igual ejecuta el programa)

  println(frameCount + " / " + frameCount%400);
  println(frameCount + " / " + (400-frameCount) );  //frameCount "inverso"
  
  contadorParaAbajo = contadorParaAbajo - 1;
  println( "contadorParaAbajo: " + contadorParaAbajo );  //ejemplo consulta sol

  textSize(tamanio);

  fill(0, 0, frameCount%400);

  //Letras del nombre que desaparecen

  text(i, 50+frameCount%400, py-10);

  text(s, 100+frameCount%400, py+10);

  text(a, 150+frameCount%400, py-10);

  text(n, 200+frameCount%400, py+10);

  text(d, 250+frameCount%400, py-10);

  text(r, 300+frameCount%400, py+10);

  text(o, 350+frameCount%400, py-10);

  //letras de apellido que desaparecen

  text(g, 50+frameCount%400, 290);

  text(u, 100+frameCount%400, 310);

  text(i, 150+frameCount%400, 290);

  text(a, 200+frameCount%400, 310);

  text(r, 250+frameCount%400, 290);

  fill(0, 0, 100);

  circle(200, 200, frameCount%100);  //%200 cuatro circulos por ciclo



  fill(0);

  //letras que quedan

  text(a, (contadorParaAbajo*-1)%400, 300);  //le cambiamos direccion

  text(l, (contadorParaAbajo*-1)%400, py+10);  //le cambiamos direccion
 
}
