// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Labyrinth (1986)

// See also:
// 10 PRINT CHR$(205.5+RND(1)); : GOTO 10


final color PAPER = color(255, 235, 130);
final color INK = color(30);

final float SCALE = 30.0;
final float STROKE = 6.0;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  scale(SCALE);
  
  final float MAX_X = width/SCALE;
  final float MAX_Y = height/SCALE;
  
  background(PAPER);
  
  stroke(INK);
  strokeCap(ROUND);
  strokeWeight(STROKE / SCALE);
  
  randomSeed(0x2143B9F7);
  
  for (int y=0; y<MAX_Y; y++) {
    for (int x=0; x<MAX_X; x++) {
      int r = (int)random(2);
      line(x+(1-r), y, x+r, y+1);
    }
  }

  save("labyrinth.png");
}
