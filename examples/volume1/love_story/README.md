---
permalink: /examples/volume1/love_story/
---
# Love Story (1970)

Drammatico, Sentimentale

## Il film in breve
A boy and a girl from different backgrounds fall in love regardless of their upbringing - and then tragedy strikes.

[dettagli](https://www.imdb.com/title/tt0066011/)

## La locandina
<img src="love-story.png"  width="360px" title="Love Story">


## Il codice
```processing
// Manuale di Programmazione Cinematografica - Volume 1
// Daniele Olmisani, 2016

// Love Story


final color PAPER = color(240);
final color INK = color(190, 0, 50);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float s = 0.35 * min(width, height);
  
  translate(width/2.0, height/3.0);
  
  background(PAPER);
  fill(INK);
  noStroke();
  
  ellipseMode(CENTER);
  
  pushMatrix();
  rotate(-QUARTER_PI);
  translate(-s/2.0, 0);
  
  ellipse(0, 0, s, s);
  rect(-s/2.0, 0, s, s);
  
  popMatrix();
  rotate(QUARTER_PI);
  translate(s/2.0, 0);
  
  ellipse(0, 0, s, s);
  
  save("love-story.png");
}
```
