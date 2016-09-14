// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// The Social Network


final color PAPER = color(65, 80, 110);
final color INK = color(95, 105, 130);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float s = 0.2 * min(width, height);
  
  translate(width/2.0, height/4.0);
  
  background(PAPER);
  stroke(INK);
  
  strokeCap(PROJECT);
  strokeJoin(ROUND);
  
  noFill();
  
  strokeWeight(s);
  beginShape();
    vertex(width/5.0, 0);
    vertex(0, 0);
    vertex(0, height/2.0); 
  endShape();
  
  strokeWeight(0.8*s);
  line(-width/8.0, height/4.0, width/5.0, height/4.0);
  
  save("the-social-network.png");
}