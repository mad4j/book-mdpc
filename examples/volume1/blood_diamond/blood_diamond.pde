// Manuale di Programmazione Cinematografica - Volume 1
// Daniele Olmisani, 2016

// Blood Diamond (2006)
// Adventure, Drama, Thriller
// http://www.imdb.com/title/tt0450259


final color PAPER = color(120);
final color INK1 = color(255, 200, 245);
final color INK2 = color(165, 10, 30);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float d = min(width, height) / 15.0;
  
  translate(width/2.0, height/3.0);
  
  background(PAPER);
  noStroke();
  
  fill(INK1);

  beginShape();
    vertex(-3*d, -d);
    vertex( 3*d, -d);
    vertex( 4*d,  0);
    vertex(  0, 5*d);
    vertex(-4*d,  0);
  endShape(CLOSE);
  
  translate(0, 7*d);
  
  fill(INK2);
  
  triangle(0, -d/0.7, d/2.0, 0, -d/2.0, 0);
  ellipse(0, 0, d, d);
  
  save("blood-diamond.png");
}