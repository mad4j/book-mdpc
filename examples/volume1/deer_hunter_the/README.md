---
permalink: /examples/volume1/deer_hunter_the/
---
# The Deer Hunter (1978)

Drama, War

## Plot
An in-depth examination of the ways in which the U.S. Vietnam War impacts and disrupts the lives of people in a small industrial town in Pennsylvania.

[details](https://www.imdb.com/title/tt0077416/)

## Movie Poster
<img src="the-deer-hunter.png"  width="360px" title="The Deer Hunter">


## The code
```java
// Manuale di Programmazione Cinematografica - Volume 1
// Daniele Olmisani, 2016

// The Deer Hunter (1978)


final color PAPER = color(195, 180, 130);
final color INK = color(135, 45, 25);

final int BULLETS = 6;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float dA = TWO_PI/BULLETS;
  
  float cX = min(width, height) / 4;
  float cY = 0;
  float s = cX / 1.2;
  
  translate(width/2.0, height/2.0);
    
  background(PAPER);
  
  noFill();
  stroke(INK);
  strokeWeight(0.04*s);
  
  for (int i=0; i<BULLETS; i++) {
    ellipse(cX, cY, s, s);
    rotate(dA);
  }
  
  rotate(-dA);
  
  noStroke();
  fill(INK);
  ellipse(cX, cY, 0.85*s, 0.85*s);
  
  stroke(PAPER);
  point(cX, cY);
  
  save("the-deer-hunter.png");
}
```

> MdPC - a collection of minimalist movie posters

> by Daniele Olmisani

> Please, see [LICENSE](../../../LICENSE) file
