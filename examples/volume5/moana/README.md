---
permalink: /examples/volume5/moana/
---
# Moana (2016)

Animazione, Avventura, Commedia

## Il film in breve
In Ancient Polynesia, when a terrible curse incurred by the Demigod Maui reaches Moana's island, she answers the Ocean's call to seek out the Demigod to set things right.

[dettagli](https://www.imdb.com/title/tt3521164/)

## La locandina
<img src="moana.png"  width="360px" title="Moana">


## Il codice
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2018

// Moana (2016)


final color PAPER = color(225, 205, 160);
final color INK = color(160, 40, 25);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  translate(0.5*width, 0.5*height);
  scale(S);
  
  background(PAPER);

  fill(INK);  
  noStroke();
  
  PShape s = createShape();
  s.beginShape();
  s.noFill();
  s.stroke(INK);
  s.strokeWeight(30*U);
  for (float a=0; a<2.6*PI; a+=40*U) {
    s.vertex(0.06*a*cos(a), 0.06*a*sin(a)); 
  }
  s.endShape();
  
  shape(s, 0, 0);
  
  scale(-1);
  shape(s, 0, 0);

  save("moana.png");
}
```
