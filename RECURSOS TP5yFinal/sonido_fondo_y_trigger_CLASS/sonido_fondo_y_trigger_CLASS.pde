/* JL 2021
 
 Para ejecutar sonidos en Processing debemos utilizar una librería: Sound
 https://processing.org/reference/libraries/sound/index.html
 
 Hay dos tipos de sonidos posibles:
 - fondo: se ejecuta y mantiene sonando (incluso podría ser en LOOP)
 - trigger: para sonidos cortos de eventos, ejemplo un disparo o colisión.
 
 > MOD PARA PODER CREAR SONIDOS DENTRO DE UNA CLASE <
 
 */

//1) importamos la librería de manera GLOBAL
import processing.sound.*;

Aventura a;

void setup() {
  size(800, 300);
  background(255);
  textSize( 20 );
  
  a = new Aventura(this);  //este 'this' remite al objeto de Processing: ¡recordemos que es una clase de Java!
}      

void draw() {
  background( 255 );
  fill( 0 );
  text( "De fondo se escucha el sonido ejecutado con el método .loop();", 50, 100 );
  text( "Al presionar la barra espaciadora se escucha la ejecución con .play();", 50, 200 );
}

void keyPressed() {
  //aquí vamos a emular una colisión, es decir, ejecutar un sonido trigger (una sola vez);
  if ( key == ' ' ) {
    background( 255, 0, 0);
    a.disparo();
  }
}
