#  ()



## Il film in breve


[dettagli](https://www.imdb.com/title//)

## La locandina
<img src="the-iron-giant.png"  width="360px" title="">


## Il codice
```processing
// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2017

// The Iron Giant (1999)

final color PAPER = color(110, 190, 190);
final color INK = color(20, 5, 60);

final float L1 = 0.7;
final float L2 = 0.6*L1;

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  translate(0.5*width, 0.6*height);
  scale(S);
  
  background(PAPER);
  strokeWeight(4*U);
  
  fill(INK);

  noStroke();
  rectMode(CENTER);
  rect(0, 0, L1, L2);
  ellipse(0, -0.5*L2, L1, L1);
  
  fill(PAPER);
  ellipse(-0.4*L2, -0.4*L2, 0.3*L1, 0.3*L1);
  ellipse( 0.4*L2, -0.4*L2, 0.3*L1, 0.3*L1);
  
  fill(INK);
  stroke(PAPER);
  quad(0, -0.4*L2, -0.15*L2, -0.8*L1, 0, -0.9*L1, 0.15*L2, -0.8*L1);
  
  save("the-iron-giant.png");
}
```
