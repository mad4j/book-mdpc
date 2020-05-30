// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Good Will Hunting (1997)


final color PAPER = color(60);
final color INK = color(230);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {

  final float S = 0.05*min(width, height);
  
  translate(0.5*width, 0.5*height);
  
  background(PAPER);
  fill(INK);
  stroke(INK);
  
  strokeWeight(0.25*S);
  
  float w1 = width/3.0;
  float w2 = width/6.0;
  
  float h1 = height/5.0;
  float h2 = height/8.0;
  
  lines(-w2, 0, w2, 0, S);
  lines( w2, 0, w1, h2, S);
  lines( w2, 0, w2, h1, S);
  
  save("good-will-hunting.png");
}


void points(float x, float y, float s) {
  ellipse( x,  y, s, s);
  ellipse( x, -y, s, s);
  ellipse(-x,  y, s, s);
  ellipse(-x, -y, s, s);
}


void lines(float x1, float y1, float x2, float y2, float s) {
  line( x1,  y1,  x2,  y2);
  line(-x1,  y1, -x2,  y2);
  line( x1, -y1,  x2, -y2);
  line(-x1, -y1, -x2, -y2);
  points(x1, y1, s);
  points(x2, y2, s);
}
