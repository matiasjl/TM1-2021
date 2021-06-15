
void setup(){
  size( 400, 400 );

  for( int i = 0 ; i < 100 ; i++ ) {
    fill( 255, 50 );
    circle( random(width), random(height), i );
  }

}
