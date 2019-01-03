---
permalink: /examples/volume4/tonari_no_totoro/
---
# My Neighbor Totoro (1988)

Animazione, Ragazzi, Fantascico

## Il film in breve
When two girls move to the country to be near their ailing mother, they have adventures with the wondrous forest spirits who live nearby.

[details](https://www.imdb.com/title/tt0096283/)

## Movie Poster
<img src="tonari-no-totoro.png"  width="360px" title="My Neighbor Totoro">


## The code
```java
// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2017

// Tonari no Totoro (1988)
// Animation, Family, Fantasy
// http://www.imdb.com/title/tt0096283/


final color PAPER = color(90, 85, 80);

final color INK1 = color(240);
final color INK2 = color(30);
final color INK3 = color(230, 210, 170);


void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  final float S = min(width, height);
  final float U = 0.002;
  
  translate(0.50*width, 0.25*height);
  scale(S);
  
  background(PAPER);
  
  noStroke();
  
  fill(INK1);
  ellipse(-0.30, 0.0, 0.2, 0.2);
  ellipse( 0.30, 0.0, 0.2, 0.2);
  
  fill(INK2);
  ellipse(-0.25, 0.0, 0.1, 0.1);
  ellipse( 0.25, 0.0, 0.1, 0.1);
 
  ellipse(0.0, 0.05, 0.1, 0.02);
  ellipse(0.0, 0.06, 0.03, 0.02);
  
  fill(INK3);
  ellipse(0.0, 1.0, 1.5, 1.5);
  
  fill(PAPER);
  ellipse( 0.0, 0.45, 0.2, 0.2);
  fill(INK3);
  ellipse( 0.0, 0.48, 0.3, 0.2);
  
  fill(PAPER);
  ellipse(-0.2, 0.55, 0.2, 0.2);
  ellipse( 0.2, 0.55, 0.2, 0.2);
  fill(INK3);
  ellipse(-0.2, 0.58, 0.3, 0.2);
  ellipse( 0.2, 0.58, 0.3, 0.2);
  
  save("tonari-no-totoro.png");
}
```

> MdPC - a collection of minimalist movie posters
