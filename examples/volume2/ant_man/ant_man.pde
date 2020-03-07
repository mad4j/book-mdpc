// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// Ant Man (2015)


final color PAPER = color(240);
final color INK = color (0);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float s = 0.004 * min(width, height);
  
  translate(0.50*width, 0.75*height);
  scale(s);
  
  background(PAPER);
  stroke(INK);
  
  line( 0, 0,  0, 2);
  line(-1, 1,  1, 1);
  line(-1, 3, -1, 3);
  line( 1, 3,  1, 3);
  
  filter(BLUR, sqrt(s)-0.41);

  save("ant-man.png");
}
