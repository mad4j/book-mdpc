---
permalink: /examples/volume5/nosferatu/
title: Nosferatu (1922) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Nosferatu (1922)

Fantasy, Horror

## Plot
Vampire Count Orlok expresses interest in a new residence and real estate agent Hutter's wife.

[details](https://www.imdb.com/title/tt0013442/)

## Movie Poster
<img src="nosferatu.png"  width="360px" title="Nosferatu">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2020

// Nosferatu (1922)


final color PAPER = color(140);
final color INK = color(30);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  background(PAPER);
  
  translate(0.5*width, 0.3*height);
  scale(S, -S);
  
  noStroke();
  fill(INK);
  
  beginShape();
    vertex(-0.10,  0.20);
    vertex( 0.10,  0.20);
    vertex( 0.25,  0.00);
    vertex( 0.10, -0.70);
    vertex(-0.10, -0.70);
    vertex(-0.25,  0.00);
  endShape(CLOSE);

  stroke(PAPER);
  strokeCap(SQUARE);
  strokeWeight(7*U);

  line(-0.05,  0.00,  0.05,  0.00);
  line( 0.00,  0.05,  0.00, -0.10);

  save("nosferatu.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
