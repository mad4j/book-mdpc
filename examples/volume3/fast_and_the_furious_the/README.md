---
permalink: /examples/volume3/fast_and_the_furious_the/
title: The Fast and the Furious (2001) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# The Fast and the Furious (2001)

Action, Crime, Thriller

## Plot
Los Angeles police officer Brian O'Connor must decide where his loyalty really lies when he becomes enamored with the street racing world he has been sent undercover to destroy.

[details](https://www.imdb.com/title/tt0232500/)

## Movie Poster
<img src="the-fast-and-the-furious.png"  width="360px" title="The Fast and the Furious">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// The Fast and the Furious (2001)


final color PAPER = color(30);
final color INK = color(240);

final int SIZE = 200;


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
  
  stroke(INK);
  strokeWeight(5*U);
  
  ellipse(0, 0, 0.5, 0.5);
  
  line(-0.15, 0.00,  0.15,  0.00);
  line( 0.00, 0.05,  0.00, -0.05);
  line(-0.15, 0.05, -0.15, -0.05);
  line( 0.15, 0.05,  0.15, -0.05);
  
  save("the-fast-and-the-furious.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
