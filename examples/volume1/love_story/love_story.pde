// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// Love Story (1970)


final color PAPER = color(240);
final color INK = color(190, 0, 50);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  final float L = 0.40;
  
  translate(0.5*width, 0.3*height);
  scale(L*S);
   
  background(PAPER);
  fill(INK);
  noStroke();
  
  ellipseMode(CENTER);
  
  pushMatrix();
  rotate(-QUARTER_PI);
  translate(-0.5, 0);
  
  ellipse(0, 0, 1, 1);
  rect(-.5, 0, 1, 1);
  
  popMatrix();
  rotate(QUARTER_PI);
  translate(0.5, 0);
  
  ellipse(0, 0, 1, 1);
  
  save("love-story.png");
}
