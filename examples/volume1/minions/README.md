# Minions (TBV)

TBV

## Il film in breve
TBV

[dettagli](TBV)

## La locandina
<img src="minions.png"  width="360px" title="Minions">


## Il codice
```processing
// Manuale di Programmazione Cinematografica - Volume 1
// Daniele Olmisani, 2016

// Minions


final color PAPER = color(255, 255, 15);
final color INK1 = color(40, 40, 40);
final color INK2 = color(240, 240, 240);
final color INK3 = color(150, 150, 150);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float s = 0.4 * min(width, height);
  
  background(PAPER);
  
  stroke(INK1);
  strokeWeight(0.2*s);
  line(0, height/5.0, width, height/5.0);
  
  fill(INK2);
  stroke(INK3);
  strokeWeight(0.125*s);
  ellipse(width/2.0, height/5.0, s, s);
  
  fill(INK1);
  noStroke();
  ellipse(width/2.0, height/5.0, 0.25*s, 0.25*s);
  
  save("minions.png");
}
```
