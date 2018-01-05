---
permalink: /examples/volume3/pianist_the/
---
# The Pianist (2002)

Biografico, Drammatico, Guerra

## Il film in breve
A Polish Jewish musician struggles to survive the destruction of the Warsaw ghetto of World War II.

[dettagli](https://www.imdb.com/title/tt0253474/)

## La locandina
<img src="the-pianist.png"  width="360px" title="The Pianist">


## Il codice
```processing

final color PAPER = color(0, 0, 0);
final color INK = color(250, 250, 250);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, height/3.0);
  
  background(PAPER);
  fill(INK);
  
  strokeWeight(2.0);
  
  for(int i=0; i<8; i++) {
    rect(0+(i-8/2.0)*50, 0, 50, 200);
  }
  
  fill(PAPER);
  for(int i=0; i<7; i++) {
    if (i%3 != 2) {
      rect(12.5+(i-7/2.0)*50, 0, 25, 125);
    }
  }
  
  save("the-pianist.png");
}
```
