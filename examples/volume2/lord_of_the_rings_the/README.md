# lord_of_the_rings_the (TBV)

TBV

## Il film in breve
TBV

[dettagli](TBV)

## La locandina
<img src="the-lord-of-the-rings.png"  width="360px" title="lord_of_the_rings_the">


## Il codice
```processing
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// The Lord of the Rings (1978)
// Animation, Adventure, Fantasy 
// http://www.imdb.com/title/tt0077869/


final color PAPER = color(45, 60, 40);
final color INK = color(245, 220, 0);

final float  SIZE = 0.625;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  translate(0.5*width, 0.5*height);
  scale(min(width, height));
 
  background(PAPER);
  
  noFill();
  stroke(INK);
  strokeWeight(0.15*SIZE);
  
  ellipseMode(CENTER);
  ellipse(0, 0, SIZE, SIZE);
  
  save("the-lord-of-the-rings.png");
}
```
