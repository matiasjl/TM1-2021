class Aventura{

  String estado;
  
  Juego j;
  
  Aventura(){
    estado = "inicio";
    j = new Juego();
  }

  void dibujar(){
    println(estado);
  }
  
  void cambiarEstado(String e){
    estado = e;
  }
  
  void teclas(Aventura aux2){      //fíjense aquí el tipo de dato solicitado como parámetro
    j.cambiarEstadoAventura(aux2);  //acá lo vuelvo a pasar a la clase Juego por un método propio
  }
  //OTRA SOLUCIÓN
  void teclas(){                    //fíjense aquí que NO pido la instancia de la clase aventura...
    j.cambiarEstadoAventura(this);  //...sino que le paso la misma con la palabra clave 'this'
  }
}
