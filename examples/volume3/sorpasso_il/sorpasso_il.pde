// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Il Sorpasso (1962)


final color PAPER = color(240);
final color INK1 = color(0, 105, 165);
final color INK2 = color(190, 0, 50);

final float STROKE = 20.0;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {

  final float S = min(width, height);
  final float U = 0.002;
  
  final float W = STROKE*U;
  
  scale(S);
  
  background(PAPER);
  
  strokeWeight(W);
  strokeJoin(ROUND);
  strokeCap(ROUND);
  
  noFill();
  
  stroke(INK1);
  line(0.6, 0.8, 0.6, 0.5);
  line(0.6, 0.5, 0.6-W, 0.5+W);
  line(0.6, 0.5, 0.6+W, 0.5+W);
  
  stroke(INK2);
  beginShape();
    vertex(0.6, 1.1); vertex(0.6, 0.9);
    vertex(0.5, 0.8); vertex(0.5, 0.5);
    vertex(0.5, 0.5); vertex(0.6, 0.4);
    vertex(0.6, 0.2);
  endShape();
  line(0.6, 0.2, 0.6-W, 0.2+W);
  line(0.6, 0.2, 0.6+W, 0.2+W);
  
  save("il-sorpasso.png");
}
