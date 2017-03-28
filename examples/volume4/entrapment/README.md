# Entrapment (1999)

1999

## Il film in breve
An insurance agent is sent by her employer to track down and help capture an art thief.

[dettagli](https://www.imdb.com/title/tt0137494/)

## La locandina
<img src="entrapment.png"  width="360px" title="Entrapment">


## Il codice
```processing
// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2016

// Entrapment


final color PAPER = color(0);
final color INK = color(240, 30, 30);

final int COUNT = 6;


void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  randomSeed(100);
  
  float s = 0.01 * min(width, height);
  float dH = (0.5 * height) / COUNT;
  
  translate(0, height/2.0);
  
  background(PAPER);
  
  stroke(INK);
  strokeWeight(s);
  
  for (int i=0; i<COUNT; i++) {
    line(0, dH*randomGaussian(), width, dH*randomGaussian());
    translate(0, dH);
  }
  
  filter(BLUR);
  
  save("entrapment.png");
}
```
