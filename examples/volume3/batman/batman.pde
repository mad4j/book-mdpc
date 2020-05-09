// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Batman (1989)

// See also:
// "Batman Curve" 
// http://mathworld.wolfram.com/BatmanCurve.html


final color PAPER = color(245);
final color INK1 = color(30);
final color INK2 = color(255, 255, 0);

final float S = 0.05;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float F = S*min(width, height);
  
  translate(0.5*width, 0.5*height);
  scale(F, -F);

  background(PAPER);  

  fill(INK2);
  stroke(INK1);
  strokeWeight(0.5);

  ellipse(0, 0, 16, 8);
  
  fill(INK1);
  noStroke();
  
  beginShape();
    for (float x=-7.0; x<=7.0; x+=0.05) {
      vertex(x, abs(x)<3 ? g(abs(x)) : f(x));
    }
    for (float x=7.0; x>=-7.0; x-=0.05) {
      vertex(x, (abs(x)<4 ? h(abs(x)) : -f(x)));
    }  
  endShape();
  
  beginShape();
    vertex(-1.00, 1.00); vertex(-0.75, 3.00);
    vertex(-0.50, 2.25); vertex( 0.50, 2.25);
    vertex( 0.75, 3.00); vertex( 1.00, 1.00);
  endShape();
  
  save("batman.png");
}


float f(float x) {
  return 3*sqrt(1-sq(x/7));
}


float g(float x) {
  return (3-x)/2-1.35*(sqrt(3-sq(x)+2*x)-2);
}


float h(float x) {
  return x*(0.5-0.09*x)-3+sqrt(1-sq((abs(x-2)-1)));
}
