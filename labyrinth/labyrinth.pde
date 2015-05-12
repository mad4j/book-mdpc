// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Labyrinth

final color PAPER = color(255, 236, 132);
final color INK = color(32, 32, 32);

final float SCALE = 15.0;
final float STROKE = 3.0;


void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
  
  scale(SCALE);
  
  final float MAX_X = width/SCALE;
  final float MAX_Y = height/SCALE;
  
  background(PAPER);
  
  noFill();
  stroke(INK);
  strokeWeight(STROKE / SCALE);
  
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
