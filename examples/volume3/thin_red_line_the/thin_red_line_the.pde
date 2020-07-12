// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// The thin red line (1998)


final color PAPER = color(240, 240, 240);
final color INK = color(190, 0, 50);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S = 0.002*min(width, height);
  
  background(PAPER);
  stroke(INK);
  strokeWeight(S);
  
  line(0, 0.5*height, width, 0.5*height);
  
  save("the-thin-red-line.png");
}
  
