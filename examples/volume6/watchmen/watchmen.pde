// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2018

// Watchmen (2009)


final color PAPER = color(35, 100, 165);
final color INK = color(10, 35, 90);


void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  final float S =  min(width, height);
  final float U = 0.002;
  
  translate(0.5*width, 0.5*height);
  scale(S, -S);
  
  background(PAPER);

  
  stroke(INK);
  strokeWeight(6*U);
  
  noFill();
  ellipse(0.0, 0.0, 0.6, 0.6);
  
  fill(INK);
  ellipse(0.0, 0.0, 0.2, 0.2);
  ellipse(0.0, 0.3, 0.1, 0.1);
  
  save("watchmen.png");
}
