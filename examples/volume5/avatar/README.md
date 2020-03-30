---
permalink: /examples/volume5/avatar/
title: Avatar (2009) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Avatar (2009)

Action, Adventure, Fantasy, Sci-Fi

## Plot
A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.

[details](https://www.imdb.com/title/tt0499549/)

## Movie Poster
<img src="avatar.png"  width="360px" title="Avatar">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2020

// Avatar (2009)


final color PAPER = color(0, 70, 175);
final color INK = color(200);

final int COUNT = 24;
final int TICKNESS = 3;
final float WEIGHT = TICKNESS / 125.0;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  translate(0.5*width, 0.4*height);
  scale(S);
  
  background(PAPER);
  
  for (int i=0; i<COUNT; i++) {
    
    stroke(INK);
    strokeWeight(TICKNESS*U);
    line(0.0, 0.0, 0.3, 0.0);
    
    noStroke();
    fill(INK);
    ellipse(0.1, 0.0, WEIGHT, WEIGHT);
    ellipse(0.2, 0.0, WEIGHT, WEIGHT);
    ellipse(0.3, 0.0, WEIGHT, WEIGHT);
    
    rotate(TWO_PI / COUNT);
  }
  
  save("avatar.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
