---
permalink: /examples/volume6/encanto/
title: Encanto (2021) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Encanto (2021)

Animation, Comedy, Family

## Plot
A Colombian teenage girl has to face the frustration of being the only member of her family without magical powers.

[details](https://www.imdb.com/title/tt2953050/)

## Movie Poster
<img src="encanto.png"  width="360px" title="Encanto">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2022

// Encanto (2021)


final long SEED = 1;
final float RADIUS = 1.0;
final int DETAILS = 100;

final color PAPER = color(15, 35, 70);
final color INK = color(225, 225, 0);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  noiseSeed(SEED);
  
  background(PAPER);
    
  translate(0.5*width, 0.5*height);
  scale(S);
  
  noStroke();
  fill(INK);
  
  float dA = PI / DETAILS;
  float dX = 0.05;
  
  float xOff = 0;
  float yOff = 0;
  
  beginShape();
  for (float a=0; a<TWO_PI; a+=dA) {
    float n = noise(xOff, yOff);
    float r = sin (2*a) * map(n, 0, 1, 0, RADIUS);
    float x = r*cos(a);
    float y = r*sin(a);
    xOff += (a<PI) ? dX : -dX;
    vertex(x, y);
  }
  endShape();
  
  save("encanto.png"); 
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
