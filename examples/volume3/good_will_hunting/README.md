---
permalink: /examples/volume3/good_will_hunting/
---
# Good Will Hunting (1997)

Drammatico

## Il film in breve
Will Hunting, a janitor at M.I.T., has a gift for mathematics, but needs help from a psychologist to find direction in his life.

[dettagli](https://www.imdb.com/title/tt0119217/)

## La locandina
<img src="good-will-hunting.png"  width="360px" title="Good Will Hunting">


## Il codice
```processing
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Good Will Hunting

final color PAPER = color(60);
final color INK = color(230);

final float SIZE = 5.0;

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/2.0);
  
  background(PAPER);
  fill(INK);
  stroke(INK);
  
  strokeWeight(SIZE);
  
  float w1 = width/3.0;
  float w2 = width/6.0;
  
  float h1 = height/5.0;
  float h2 = height/8.0;
  
  lines(-w2, 0, w2, 0, 4*SIZE);
  lines( w2, 0, w1, h2, 4*SIZE);
  lines( w2, 0, w2, h1, 4*SIZE);
  
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
```
