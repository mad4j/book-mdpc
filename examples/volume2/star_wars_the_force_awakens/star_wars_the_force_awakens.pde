// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// Star Wars The Force awakens (2015)


final color PAPER = color(220, 210, 170);
final color INK1 = color(255);
final color INK2 = color(0);
final color INK3 = color(210, 135, 10);


void setup() {
  size(480, 640);
  noLoop();
}
 
 
void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  translate(0.5*width, 0.5*height);
  scale(0.004*S);
  
  background(PAPER);
  
  fill(INK1);
  stroke(INK3);
  
  strokeWeight(3);

  ellipse(0, 0, 130, 130);
  
  arc(0, -72, 80, 80, -PI, 0);
  arc(0, -72, 80, 23, 0, PI);
  
  fill(INK2);
  ellipse(0, -92, 15, 15);
  ellipse(18, -80, 8, 8);
  
  noStroke();
  
  fill(INK3);
  ellipse(-13, 6, 60, 60);
  
  fill(INK1);
  ellipse(-13, 6, 42, 42);
  
  save("star-wars-the-force-awakens.png");
}
