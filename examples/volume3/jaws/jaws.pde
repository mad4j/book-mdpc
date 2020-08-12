// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Jaws (1975)


final color PAPER = color(0, 105, 165);
final color INK = color(195, 180, 130);

final float TEETH = 10;;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  background(PAPER);
  fill(INK);
  noStroke();

  scale(width/TEETH, height/TEETH);
  drawTeeth();
  
  resetMatrix();
  translate(0, height);
  scale(width/TEETH, -height/TEETH);
  drawTeeth();

  save("jaws.png");
}


void drawTeeth() {
  rect(0, 0, width/TEETH, 1.01);
  for(int i=0; i<TEETH; i++) {
     triangle(i, 1, i+1, 1, i+0.5, 2);
  }
}
