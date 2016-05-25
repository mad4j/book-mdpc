// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// Frozen

final color PAPER = color(85, 115, 200);
final color INK = color(240, 240, 240);

final int COUNT = 8;
final float STROKE = 10.0;

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/2.0);
  
  background(PAPER);
  
  stroke(INK);
  strokeWeight(STROKE);
  
  for (int i=0; i<COUNT; i++) {
    line(0, 0, 0.4*width, 0);
    for (int k=0; k<5; k++) {
      float step = 0.07*k*width;
      line(step, 0, step+2*STROKE, 2*STROKE);
      line(step, 0, step+2*STROKE, -2*STROKE);
    }
    rotate(TWO_PI / COUNT);
  }
  
  save("frozen.png");
}