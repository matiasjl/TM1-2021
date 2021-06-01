
//EFECTO OVER-MOUSE

int diametro = 60;

void setup(){
}
void draw(){
    boolean EstoyDentroDelBoton = (dist(mouseX, mouseY, width/2, height/2 ) < diametro/2);
    
    //cambio el color segun estoy dentro o fuera del circulo
    if( EstoyDentroDelBoton ){ 
      fill( 0 );
    }else{
      fill( 100 );
    }
    
    //dibujo el circulo aka boton
    circle( width/2, height/2, diametro );
}
