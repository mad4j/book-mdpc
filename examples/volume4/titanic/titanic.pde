// Manuale di Programmazione Cinematografica - Volume 1
// Daniele Olmisani, 2016

// Titanic


final color PAPER = color(0, 35, 60);
final color INK1 = color(240);
final color INK2 = color(50, 80, 135, 100);
final color INK3 = color(50, 60, 80);
final color INK4 = color(10, 10, 20);


void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(0.5*width, 0.7*height);
  
  background(PAPER);
  
  noStroke();
  
  fill(INK4);
  quad(0, -0.60*height, -0.1*width, -0.55*height, 0, 0, 0.1*width, -0.55*height);  
  
  fill(INK3);
  quad(0, -0.50*height, -0.30*width, -0.35*height, -0.20*width, 0, 0, 0);
  
  fill(INK4);
  quad(0, -0.50*height,  0.30*width, -0.35*height,  0.20*width, 0, 0, 0);
  
  fill(INK1);

  beginShape();
    vertex(-0.20*width,  0);
    vertex(-0.10*width, -0.35*height);
    vertex(          0, -0.20*height);
    vertex( 0.10*width, -0.25*height);
    vertex( 0.20*width,  0);
    vertex(          0,  0.15*height);
  endShape(CLOSE);
  
  fill(INK2);
  rect(-0.5*width, -0.10*height, width, height);
  
  save("titanic.png");
}