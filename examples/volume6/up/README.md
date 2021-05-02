---
permalink: /examples/volume6/up/
title: Up (2009) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Up (2009)

Animation, Adventure, Comedy, Family

## Plot
78-year-old Carl Fredricksen travels to Paradise Falls in his house equipped with balloons, inadvertently taking a young stowaway.

[details](https://www.imdb.com/title/tt1049413/)

## Movie Poster
<img src="up.png"  width="360px" title="Up">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2021

// Up (2009)


final color PAPER = color(80, 140, 185);
final color INK = color(255);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  final float S =  min(width, height);
  final float U = 0.002;

  translate(0.5*width, 0.3*height);
  scale(S);
  
  background(PAPER);
  
  fill(INK);
  stroke(INK);
  strokeWeight(U);
  
  ellipse(0.0, -0.03, 0.2, 0.2);
  ellipse(-0.03, 0.02, 0.2, 0.2);
  ellipse(0.02, 0.04, 0.2, 0.2);
  
  triangle(0.0, 0.31, -0.07, 0.36, 0.07, 0.36);
  
  rectMode(CENTER);
  rect(0.0, 0.4, 0.12, 0.08);
  
  for (int i=0; i<=10; i++) {
    line(0.0, 0.32, -0.12+i*0.022, 0.0);
  }
  
  save("up.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
