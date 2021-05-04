String L="Lutz";
String J="Juan";

void setup() {
size (1024, 768);
textAlign(CENTER);
textSize(100);
}

float i=1;

void draw() {

background(20);

int resolucion = 360;
float diametro = height * 0.8;
float radio = diametro / 2;

float centrox = width/2.0;
float centroy = height/2.0;

float angulo = i * TWO_PI / resolucion;
float x = centrox + cos(angulo) * radio;
float y = centroy + sin(angulo) * radio;
float x2 = centrox - cos(angulo) * radio;
float y2 = centroy - sin(angulo) * radio;

noFill();
strokeWeight(8);
stroke(255);
circle(centrox, centroy, 900);
strokeWeight(10);
circle(centrox, centroy, 950);

text(L, x, y);
text(J, x2, y2);

i=i+1;
}
