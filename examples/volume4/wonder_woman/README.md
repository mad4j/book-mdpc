# wonder_woman (TBV)

TBV

## Il film in breve
TBV

[dettagli](TBV)

## La locandina
<img src="wonder-woman.png"  width="360px" title="wonder_woman">


## Il codice
```processing
// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2017

// Wonder Woman


final color PAPER = color(170, 20, 10);
final color INK = color(225, 185, 15);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float s = 0.1 * min(width, height);
  
  translate(0.5*width, 0.3*height);
  
  background(PAPER);
  
  noFill();
  stroke(INK);
  strokeWeight(2*s);
  strokeCap(SQUARE);
  
  strokeJoin(ROUND);
  beginShape();
    vertex(-width, 0);
    vertex(-3*s, 0);
    vertex(-1.3*s, 2.5*s);
  endShape();
 
  strokeJoin(MITER);
  beginShape();
    vertex(-3*s, 0);
    vertex(-1.3*s, 2.5*s);
    vertex( 0, -0.1*s);
    vertex( 1.3*s, 2.5*s);
    vertex( 3*s, 0);
  endShape();

  strokeJoin(ROUND);
  beginShape();
    vertex( 1.3*s, 2.5*s);
    vertex( 3*s, 0);
    vertex( width, 0);
  endShape();
  
  save("wonder-woman.png");
}
```
