void setup() {
  size(300, 300, P2D);
  smooth(4);
  frameRate(20);
}

void draw() {

  background(00);
  noStroke();
  int armCount=9;
  fill( 255, 100 );
  translate( width/2, height/2 );
  rotate( -float(frameCount)/ 20);


  for ( int i=0; i<450; i++) {
    float thick = 0 + i/18;
    for ( int j=0; j<armCount; j++) {
      float a = radians(float(j) * 360.0 / armCount + i);
      ellipse( cos(a) * i/map( 0, 0, width, -2, 2), sin( a) * i/map(0, 0, height, -2, 2), thick, thick);
    }
  }
}

