/**
 
 Para ejecutar sonidos en Processing debemos utilizar una librería: Sound
 
 Hay dos tipos de sonidos posibles:
 - fondo: se ejecuta y mantiene sonando (incluso podría ser en LOOP)
 - trigger: para sonidos cortos de eventos, ejemplo un disparo o colisión.
 
 */

//importamos la librería
import processing.sound.*;
//creamos dos instancias de la clase SoundFile
SoundFile musicaFondo;
SoundFile sonidoColision;

void setup() {
  size(800, 300);
  background(255);
  textSize( 20 );

  // Cargo los archivos de audio de la carpeta data
  musicaFondo = new SoundFile(this, "vibraphon.aiff");
  sonidoColision = new SoundFile(this, "disparo.wav");

  // Estos métodos imprimen información importante de los archivos
  println("musicaFondo");
  println("SFSampleRate= " + musicaFondo.sampleRate() + " Hz");
  println("SFSamples= " + musicaFondo.frames() + " samples");
  println("SFDuration= " + musicaFondo.duration() + " seconds");
  println("");
  println("sonidoColision");
  println("SFSampleRate= " + sonidoColision.sampleRate() + " Hz");
  println("SFSamples= " + sonidoColision.frames() + " samples");
  println("SFDuration= " + sonidoColision.duration() + " seconds");

  // Aquí seteo si quiero reproducir en loop: que se repita infinitamente.
  musicaFondo.loop();  //lo hago solo con la música de fondo.

  //hay varias funciones interesantes para abordar los sonidos, ejemplos:
  //soundfile.rate( velocidad_de_reproduccion );
  //soundfile.amp( volumen );  //valor entre 0 y 1 -normalizado-
  //soundfile.pan( paneo );    //valor entre 0 y 1 -normalizado-
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
    sonidoColision.play();
  }
}
