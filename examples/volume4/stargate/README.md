---
permalink: /examples/volume4/stargate/
title: Stargate (1994) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Stargate (1994)

Action, Adventure, Sci-Fi

## Plot
An interstellar teleportation device, found in Egypt, leads to a planet with humans resembling ancient Egyptians who worship the god Ra.

[details](https://www.imdb.com/title/tt0111282/)

## Movie Poster
<img src="stargate.png"  width="360px" title="Stargate">


## The code
```java
// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2017

// Stargate (1994)
// Action, Adventure, Sci-Fi
// http://www.imdb.com/title/tt0111282


final color PAPER = color(50, 60, 70);
final color INK = color(90, 115, 140);


void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  final float S = min(width, height);
  final float U = 0.002;
  
  translate(0.5*width, 0.3*height);
  scale(S);
  
  background(PAPER);
  
  noFill();
  
  stroke(INK);
  strokeCap(SQUARE);
  strokeWeight(25*U);
  
  beginShape();
    vertex(-0.23, 0.48);
    vertex(-0.22, 0.50);
    vertex(-0.25, 0.50);
    vertex( 0.00, 0.00);
    vertex( 0.25, 0.50);
    vertex( 0.22, 0.50);
    vertex( 0.23, 0.48);
  endShape();
  
  strokeWeight(12*U);
  ellipse(0.00, -0.14, 0.08, 0.08);
  
  save("stargate.png");

}
```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
