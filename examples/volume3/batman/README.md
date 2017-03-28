# Batman (1989)

Action, Adventure

## Il film in breve
The Dark Knight of Gotham City begins his war on crime with his first major enemy being the clownishly homicidal Joker.

[dettagli](https://www.imdb.com/title/tt0096895/)

## La locandina
<img src="batman.png"  width="360px" title="Batman">


## Il codice
```processing
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Batman

// See also:
// "Batman Curve" 
// http://mathworld.wolfram.com/BatmanCurve.html

final color PAPER = color(245);
final color INK1 = color(30);
final color INK2 = color(255, 255, 0);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/2.0);
  scale(25, -25);

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
```
