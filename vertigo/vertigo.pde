/**
hypnosis spiral by <a href="http://www.local-guru.net/blog">guru</a>
*/
void setup() {
  
  size(480, 640);
  smooth();
  
  noLoop();
}

void draw() {
  
  background(0);
  noStroke();
  
  fill(255, 0, 0);
  translate( width/2, height/2 );
  
  for( int i=0; i<360; i++) {
    
    float r = 5 + i/18;

    for( int j=0; j<7; j++) {
      float a = radians(float(j) * 360.0 / 7 + i);
      ellipse( cos(a) * i/-2, sin( a) * i/-2, r,r  );
    }
  }
  
}
