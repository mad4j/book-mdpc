# black_hole_the (TBV)

TBV

## Il film in breve
TBV

[dettagli](TBV)

## La locandina
<img src="the-black-hole.png"  width="360px" title="black_hole_the">


## Il codice
```processing
// Manuale di Programmazione Cinematografica - Volume 1
// Daniele Olmisani, 2017

// The Black Hole (1979)
// Action, Sci-Fi
// http://www.imdb.com/title/tt0078869


final color PAPER = color(115);
final color INK1 = color(175, 30, 25);
final color INK2 = color(240);
final color INK3 = color(0);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S = min(width, height);
  final float U = 0.002;
  
  translate(0.5*width, 0.4*height);
  scale(S);
  
  background(PAPER);
  noStroke();
 
  rectMode(CENTER);
  
  fill(INK1);
  rect(0.0, 0.0, 1.0, 0.3);
  
  fill(INK2);
  rect(-0.15, 0.0, 0.2, 0.2, 0.02);
  rect( 0.15, 0.0, 0.2, 0.2, 0.02);
  
  fill(INK3);
  ellipse(-0.15,  0.0, 0.06, 0.06);
  ellipse( 0.15, -0.0, 0.06, 0.06);
  
  save("the-black-hole.png");
}
```
