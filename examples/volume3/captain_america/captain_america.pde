// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Captain America: the First Avenger (2011)


final color PAPER = color(235, 225, 205);
final color INK1 = color(215, 50, 40);
final color INK2 = color(240, 245, 245);
final color INK3 = color(0, 140, 165);

final float S = 0.002;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float F = S*min(width, height);
  
  translate(0.5*width, 0.5*height);
  scale(F);
  
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
