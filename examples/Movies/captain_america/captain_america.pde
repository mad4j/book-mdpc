// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Captain America: the First Avenger

final color PAPER = color(237, 225, 203);
final color INK1 = color(217, 50, 42);
final color INK2 = color(242, 243, 244);
final color INK3 = color(0, 142, 164);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/2.0);
  
  background(PAPER);
  stroke(INK1);  
  strokeWeight(35.0);
  
  fill(INK2);
  ellipse(0, 0, 340, 340);

  fill(INK3);
  ellipse(0, 0, 200, 200);
 
  noStroke();
  fill(INK2);

  beginShape();
    vertex(  0, -50); 
    vertex( 29,  40);
    vertex(-47, -15); 
    vertex( 47, -15);
    vertex(-29,  40);
  endShape(CLOSE);
  
  save("captain-america.png"); 
}