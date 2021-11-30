
class Juego{
  
  Juego(){
  
  }
  
  void cambiarEstadoAventura(Aventura aux){
    //esto sucedería al ganar o perder
    
    //a.cambiarEstado("mala practica");  //se pierde el encapsulamiento porque accedo a un objeto global: a
    aux.cambiarEstado("buena practica"); //accedo mediante el objeto temporal 'aux' al objeto 'aventura'
  }

}
