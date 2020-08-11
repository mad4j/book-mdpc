---
permalink: /examples/volume3/fistful_of_dollars/
title: A Fistful of Dollars (1964) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# A Fistful of Dollars (1964)

Western

## Plot
A wandering gunfighter plays two rival families against each other in a town torn apart by greed, pride, and revenge.

[details](https://www.imdb.com/title/tt0058461/)

## Movie Poster
<img src="fistful-of-dollars.png"  width="360px" title="A Fistful of Dollars">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Fistful of dollars (1964)

final color PAPER = color(55, 50, 0);
final color INK = color(170, 165, 120);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  translate(0.5*width, 0.0);
  scale(S);
  
  background(PAPER);
  
  strokeWeight(20*U);
  stroke(INK);
  noFill();
  
  rectMode(CENTER);
  rect(-0.4, 0.0, 0.1, 0.1);
  rect(-0.3, 0.1, 0.1, 0.1);
  rect(-0.2, 0.2, 0.1, 0.1);
  rect(-0.1, 0.3, 0.1, 0.1);
  
  rect( 0.0, 0.4, 0.1, 0.1);
  
  rect( 0.1, 0.3, 0.1, 0.1);
  rect( 0.2, 0.2, 0.1, 0.1);
  rect( 0.3, 0.1, 0.1, 0.1);
  rect( 0.4, 0.0, 0.1, 0.1);
  
  strokeCap(SQUARE);
  
  beginShape();
    vertex(-0.30, 0.50); vertex(-0.40, 0.50);
    vertex(-0.40, 0.57); vertex(-0.15, 0.57);
    vertex(-0.15, 0.64); vertex(-0.25, 0.64);
  endShape();
  
  beginShape();
    vertex( 0.30, 0.50); vertex( 0.40, 0.50);
    vertex( 0.40, 0.57); vertex( 0.15, 0.57);
    vertex( 0.15, 0.64); vertex( 0.25, 0.64);
  endShape();
  
  line(-0.05, 0.12,  0.05, 0.12);
  line(-0.12, 0.05, -0.02, 0.05);
  line( 0.12, 0.05,  0.02, 0.05);
  
  line(-0.05, 0.80,  0.05, 0.80);
  line(-0.05, 1.20,  0.05, 1.20);
  line( 0.40, 1.00,  0.30, 1.00);
  line(-0.40, 1.00, -0.30, 1.00);
  
  line(-25, 400, 25, 400);
  line(200, 500, 150, 500);
  line(-200, 500, -150, 500);
  line(-25, 600, 25, 600);
  
  save("fistful-of-dollars.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
