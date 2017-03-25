# m (TBV)

TBV

## Il film in breve
TBV

[dettagli](TBV)

## La locandina
<img src="M.png"  width="360px" title="m">


## Il codice
```processing
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// M

final color PAPER = color(250, 185, 105);
final color INK = color(245, 50, 15);


void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
 
  float d = min(width, height) / 8.0;
  
  translate(width/2.0, height/3.0);
  
  background(PAPER);
  
  stroke(INK);
  strokeWeight(d/1.5);
  
  line(-d, 0,  0, d);
  line( d, 0,  0, d);
  
  line(-d, 0, -d, 2.5*d);
  line( d, 0,  d, 2.5*d);
  
  save("M.png");
}
```
