# dune (TBV)

TBV

## Il film in breve
TBV

[dettagli](TBV)

## La locandina
<img src="dune.png"  width="360px" title="dune">


## Il codice
```processing
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// Dune


final color PAPER = color(255, 160, 10);
final color INK = color(255, 205, 60);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  translate(width/2.0, height/2.0);
  
  background(PAPER);
  
  fill(INK);
  noStroke();
  
  float s = 0.6 * min(width, height);
  
  ellipse(0, 0, s, s);
  filter(BLUR, 8);
  ellipse(0, 0, s, s);
  
  save("dune.png");
}
```
