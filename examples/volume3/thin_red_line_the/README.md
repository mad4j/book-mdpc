# thin_red_line_the (TBV)

TBV

## Il film in breve
TBV

[dettagli](TBV)

## La locandina
<img src="the-thin-red-line.png"  width="360px" title="thin_red_line_the">


## Il codice
```processing
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// The thin red line

final color PAPER = color(240, 240, 240);
final color INK = color(190, 0, 50);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  background(PAPER);
  stroke(INK);
  line(0, height/2.0, width, height/2.0);
  
  save("the-thin-red-line.png");
}
  
```
