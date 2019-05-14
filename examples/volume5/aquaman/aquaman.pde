// Manuale di Programmazione Cinematografica - Volume 5
// Daniele Olmisani, 2019

// Aquaman (2018)


final color INK1 = color(240, 135, 20);
final color INK2 = color(15, 140, 60);
final color INK3 = color(255, 210, 20);
final color INK4 = color(0);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  translate(0.5*width, 0.5*height);
  scale(S);
  
  noStroke();
  rectMode(CENTER);
  
  fill(INK1);
  rect(0.0, -0.5, 1.0, 1.0);
  
  fill(INK2);
  rect(0.0, 0.5, 1.0, 1.0);
  
  fill(INK3);
  strokeWeight(3*U);
  stroke(INK4);
  rect(0.0, 0.0, 1.5, 0.15);
  
  fill(INK3);
  triangle(0.0, -0.2, -0.2, 0.2, 0.2, 0.2);
  
  fill(INK2);
  arc(0.0, 0.2, 0.1, 0.1, -PI, 0.0, OPEN);
  
  stroke(INK2);
  line(-0.045, 0.2, 0.045, 0.2);
  
  save("aquaman.png");
}
