// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Alice in Wonderland


final color PAPER = color(230, 145, 170);
final color INK = color(240, 245, 245);


void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  float size = 0.625*width;
  
  translate(width/2.0, height/3.0);
  
  background(PAPER);
  
  noStroke();
  
  fill(INK);
  ellipse(0, 0, size, size);
  
  fill(PAPER);
  ellipse(0, -0.17*size, 1.08*size, size);
  
  stroke(PAPER);
  for (float i=-size; i<size; i+=size/8) {
    line(i, 0, i, height); 
  }
  
  save("alice-in-wonderland.png");
}