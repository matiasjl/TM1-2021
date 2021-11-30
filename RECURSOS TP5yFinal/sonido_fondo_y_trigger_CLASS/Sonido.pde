
class Aventura {  
  // Lo ideal sería no crear una clase para los sonidos,
  // porque SoundFile es una clase en si misma.
  // ENTONCES...
  // Sugiero crear las instancias (objetos) de sonidos
  // dentro de cada clase a la que pertenezcan: Juego, Aventura, etc.
  // EL PROBLEMA:
  // SoundFile requiere como primer parámetro al objeto de processing
  // LA SOLUCIÓN:
  // Pasar el objeto de Processing como parámetro vía constructor :D
  // >>>
  // PApplet = ES LA CLASE DE PROCESSING !

  //----------------------------------------
  //2) creo dos instancias de la clase SoundFile
  SoundFile musicaFondo;
  SoundFile sonidoColision;


  Aventura(PApplet p) {  //préstese especial atención el tipo de dato que le pido pasar por constructor

    //3) Cargo los archivos de audio de la carpeta data
    musicaFondo = new SoundFile(p, "vibraphon.aiff");  //aquí, en vez de 'this', utilizo la variable temporal que remite al objeto de processing
    sonidoColision = new SoundFile(p, "disparo.wav");

    //4) imprimo informacion relevante y seteo loop
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

    //5) Aquí seteo si quiero reproducir en loop: que se repita infinitamente.
    musicaFondo.loop();  //lo hago solo con la música de fondo.
  }

  void disparo() {
    //6) ejetuto un sonido de tipo trigger
    sonidoColision.play();
  }
}
