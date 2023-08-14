---
permalink: /examples/volume6/eastern_promises/
title: Eastern Promises (2007) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Eastern Promises (2007)

Crime, Drama, Thriller

## Plot
A teenager who dies during childbirth leaves clues in her journal that could tie her child to a rape involving a violent Russian mob family.

[details](https://www.imdb.com/title/tt0765443/)

## Movie Poster
<img src="eastern-promises.png"  width="360px" title="Eastern Promises">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2023

// Eastern Promises (2007)


final color PAPER = color(230, 225, 215);
final color INK = color(60, 45, 40);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  translate(0.5*width, 0.5*height);
  
  background(PAPER);
  
  stroke(INK);
  strokeJoin(ROUND);
  strokeWeight(8*U);

  scale(0.8*S);
  
  rotate(0.5 * QUARTER_PI);
  drawStar();  
  
  rotate(QUARTER_PI);
  drawStar();
  
  scale(1.25);
  
  rotate(1.5 * QUARTER_PI);
  drawStar();  
  
  rotate(QUARTER_PI);
  drawStar();
  
  save("eastern-promises.png");

}

void drawStar() {
  
  for (int k=0; k<2; k++) {
    
    fill( (k%2 == 0) ? PAPER : INK);
      
    for (int i=0; i<4; i++) {
      triangle(0.0, 0.0, 0.0, 0.45, 0.08, 0.08);
      rotate(HALF_PI);
    }
    noFill();
     
    scale(-1.0, 1.0);
  }
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
