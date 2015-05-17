// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Monsters, Inc

final color PAPER = color(88, 197, 200);
final color INK1= color(242, 243, 244);
final color INK2 = color(34, 34, 34);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/3.0);
  
  background(PAPER);
  
  noStroke();
  ellipseMode(CENTER);
  
  fill(INK1);
  arc(0, 24, 250, 150, PI+PI/10.0, TWO_PI-PI/10.0, CHORD);
  arc(0, -23, 250, 150, 0+PI/10.0, PI-PI/10.0, CHORD);
  
  fill(INK2);
  ellipse(0, 0, 80, 80);
  
  save("monsters-inc.png");
}
