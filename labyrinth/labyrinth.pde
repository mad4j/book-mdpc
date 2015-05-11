
final color BACKG = color(246, 240, 0);
final color FOREG = color(32, 32, 32);

final float SCALE_FACTOR = 15.0;


void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
  
  scale(SCALE_FACTOR);
  
  final float MAX_X = width/SCALE_FACTOR;
  final float MAX_Y = height/SCALE_FACTOR;
  
  background(BACKG);
  
  noFill();
  stroke(FOREG);
  strokeWeight(3/SCALE_FACTOR);
  
  for (int x=0; x<MAX_X; x++) {
    for (int y=0; y<MAX_Y; y++) {

      if (random(1) < 0.5) {        
        line(x, y, x+1, y+1);
      } else {
        line(x+1, y, x, y+1);
      }
    }
  }
  
  save("labyrinth.png");
}
