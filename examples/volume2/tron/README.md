---
permalink: /examples/volume2/tron/
title: TRON (1982) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# TRON (1982)

Action, Adventure, Sci-Fi

## Plot
A computer hacker is abducted into the digital world and forced to participate in gladiatorial games where his only chance of escape is with the help of a heroic security program.

[details](https://www.imdb.com/title/tt0084827/)

## Movie Poster
<img src="tron.png"  width="360px" title="TRON">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Tron (1982)


final color PAPER = color(30);
final color[] INKS = {
  color(0, 135, 85),
  color(255, 50, 50),
  color(55, 205, 250),
};


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  translate(0.5*width, 0.5*height);
  scale(S);
  
  background(PAPER);
  
  noFill();
  strokeJoin(ROUND);
  strokeCap(SQUARE);
  
  stroke(INKS[0]);
  strokeWeight(U);
  for (float i=-0.6; i<=0.6; i+=0.1) {
    line(   i, -1.0,   i, 1.0);
    line(-1.0,    i, 1.0,   i);
  } 
  
  
  for (int i=1; i<INKS.length; i++) {
    
    translate(0.05, 0.06);
    
    stroke(INKS[i]);
    strokeWeight(10*U);
    beginShape();
      vertex(0.0,  0.7); 
      vertex(0.0,  0.2);
      vertex(0.2,  0.2); 
      vertex(0.2, -0.1);
    endShape();
    
    strokeWeight(15*U);
    line(0.2, -0.12, 0.2, -0.04);
  }

  save("tron.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
