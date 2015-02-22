
final int NOTCHES = 16;
final float TAILS_LENGTH = PI/8.0;

void setup() {
  
  size(480, 640);
  noLoop();
}


void draw() {
  
  background(0);
  
  strokeWeight(5);
  
  translate(width/2.0, height/2.0);
  rotate(TAILS_LENGTH);
  
  for (int i=0; i<=NOTCHES; i++) {
    
    if (i<NOTCHES/5) {
      stroke(255, 0, 0);
    } else {
      stroke(255);
    }
    
    if (i%2 == 0) {
      line(80, 0, 100, 0);
    } else {
      line(90, 0, 100, 0);
    }
    rotate(-(PI+2*TAILS_LENGTH)/NOTCHES);
  }
  
  line(0, 0, -80, -20);
  
  save("speed.png");
}
