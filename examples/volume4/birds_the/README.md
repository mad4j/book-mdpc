# The Birds (1963)



## Il film in breve
TBV

[dettagli](https://www.imdb.com/title/tt0056869/)

## La locandina
<img src="the-birds.png"  width="360px" title="The Birds">


## Il codice
```processing
// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2016

// The birds


final color PAPER = color(255);
final color INK = color(30);

final int COUNT = 150;
final float DELTA = 0.8;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  randomSeed(100);
  
  float s = min(width, height) / 4.8;

  background(PAPER);
  noFill();
  stroke(INK);
  strokeWeight(0.05*s);
  
  for (int i=0; i<COUNT; i++) {
    resetMatrix();
    translate(random(width), random(height));
    scale(1 / (random(10)+1));
    rotate(-0.1*PI);
    arc(-0.4*s, 0, 0.8*s, s, -PI+DELTA, 0);
    arc( 0.4*s, 0, 0.8*s, s, -PI, -DELTA);
  }
  
  save("the-birds.png");
}
```
