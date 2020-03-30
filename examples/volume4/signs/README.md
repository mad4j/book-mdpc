---
permalink: /examples/volume4/signs/
title: Signs (2002) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Signs (2002)

Drama, Mystery, Sci-Fi

## Plot
A family living on a farm finds mysterious crop circles in their fields which suggests something more frightening to come.

[details](https://www.imdb.com/title/tt0286106/)

## Movie Poster
<img src="signs.png"  width="360px" title="Signs">


## The code
```java
// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2017

// Signs


final color PAPER = color(110, 155, 40);
final color INK = color(205, 230, 150);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
 float s = 0.4 * min(width, height);
  
  translate(0.5*width, 0.7*height);
  
  background(PAPER);
  
  noFill();
  stroke(INK);
  strokeCap(SQUARE);
  strokeWeight(0.2*s);
  
  ellipse(0, 0, s, s);
  arc(0, -1.5*s, 1.7*s, 1.2*s, 0, PI);
  
  line(0, -0.4*s, 0, -1.8*s);
  
  line(-0.8*s, -0.15*s, -0.8*s, 0.15*s);
  line( 0.8*s, -0.15*s,  0.8*s, 0.15*s);
  
  noStroke();
  fill(INK);
  ellipse(0, -1.8*s, 0.5*s, 0.5*s);
  
  save("signs.png");
}
```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
