---
permalink: /examples/volume4/american_beauty/
---
# American Beauty (1999)

Drammatico, Sentimentale

## Il film in breve
A sexually frustrated suburban father has a mid-life crisis after becoming infatuated with his daughter's best friend.

[dettagli](https://www.imdb.com/title/tt0169547/)

## La locandina
<img src="american-beauty.png"  width="360px" title="American Beauty">


## Il codice
```java
// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2017

// American Beauty (1999)


final color PAPER = color(240, 195, 160);
final color INK1 = color(100, 155, 50);
final color INK2 = color(150, 50, 35);

final float S = 0.1;
final float U = 0.02;


void setup() {
  
  size(480, 640);
  noLoop();
}


void draw() {
 
  final float F = S*min(width, height);
  
  translate(0.6*width, 0.6*height);
  scale(F);
  
  rotate(0.15*PI);
  
  background(PAPER);
  
  stroke(INK1);
  strokeWeight(5*U);
  line(0, -1, 0, 5);
  
  fill(INK1);
  noStroke();
  quad(0, 0, -1, -0.5, -1.5, -0.1, -0.7, 0.1);
 
  fill(INK2);
  noStroke();
  
  float a = 0.1*PI;
  rotate(-a);
  for (int i=0; i<3; i++) {
    triangle(-0.8, -2, 0.8, -2, 0, 0);
    rotate(a);
  }

  save("american-beauty.png");
}
```
