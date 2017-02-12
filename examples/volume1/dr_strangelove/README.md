# Dr. Strangelove (1964)

Commedia

## Il film in breve
TBD

[dettagli](https://www.imdb.com/title/tt0057012/)

## La locandina
<img src="dr-strangelove.png"  width="360px" title="Dr. Strangelove">


## Il codice
```processing
// Manuale di Programmazione Cinematografica - Volume 1
// Daniele Olmisani, 2016

// Dr. Strangelove (1964)


final color PAPER = color(255);
final color INK = color(25, 25, 110);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float F = min(width, height);
  
  translate(0.5*width, 0.5*height);
  scale(F);
  
  background(PAPER);
  
  fill(INK);
  noStroke();
  
  rectMode(CENTER);
  rect(0, 0, 0.20, 0.52, 0.30, 0.30, 0.30, 0.30);
  translate(0, -0.15);
  quad(-0.10, 0, 0.10, 0, 0.05, -0.20, -0.05, -0.20);
  translate(0, -0.15);
  quad(0, 0, 0, -0.10,  0.10, -0.15,  0.10, -0.05);
  quad(0, 0, 0, -0.10, -0.10, -0.15, -0.10, -0.05);
  
  save("dr-strangelove.png");
}
```
