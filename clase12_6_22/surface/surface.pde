
// TIPs 'surface'

void setup(){
  surface.setTitle("Hola Tecno1!");  //cambio el título de la barra
  surface.setResizable(true);        //defino que puede cambiarse el tamaño de ventana
  surface.setLocation( 100, -500 );  //indico la posición exacta de la ventana en pantalla
  
  //queda pendiente agregar como armar otro surface
}

void draw(){
  background( 255 );
  fill( 0 );
  rect( 10, 10, width-20, height-20 );
  
  surface.setLocation( frameCount, -500 );  //modo dinámico!!!!!!

}

void keyPressed(){
  if( key == '1' ){
     surface.setSize( 100, 100 );  //size dinámico: cambio tamaño de ventana
  }else if( key == '2' ){
    surface.setSize( 200, 200 );
  }else if( key == '3' ){
    surface.setSize( 300, 300 );
  }
}
