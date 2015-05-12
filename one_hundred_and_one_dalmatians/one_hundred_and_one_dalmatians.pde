// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// One hundred and one Dalmatians


final color PAPER = color(250);
final color INK = color(34);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  background(PAPER);
  
  randomSeed(10);
  for (int i=0; i<7; i++) {
    drawSpot(random(width), random(height), random(150), 20);
  }
  
  save("one-hundred-and-one-dalmatians.png");
}


void drawSpot(float x, float y, float radius, int fuzziness) {
  
  fill(INK);
  noStroke();
  
  pushMatrix();

  translate(x, y);
  
  ellipse(0, 0, radius, radius);
  
  for (int i=0; i<fuzziness; i++) {
    ellipse(random(0.2*radius), random(0.2*radius), radius, radius);
  }
  
  popMatrix();
}
