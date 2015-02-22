
final int LEVELS = 10;

void setup() {
  
  size(480, 640);
  noLoop();
}


void draw() {
  
  background(0);
  
  stroke(255);
  strokeWeight(5);
  
  translate(width/2.0, height/2.0);
  
  for (int i=0; i<=LEVELS; i++) {
    
    if (i%2 == 0) {
      line(90, 0, 100, 0);
    } else {
      line(80, 0, 100, 0);
    }
    rotate(-PI/LEVELS);
  }
  
  
}
