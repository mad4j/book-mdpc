---
permalink: /examples/volume6/open_water/
title: Open Water (2003) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Open Water (2003)

Adventure, Drama, Horror

## Plot
Based on the true story of two scuba divers accidentally stranded in shark infested waters after their tour boat has left.

[details](https://www.imdb.com/title/tt0374102/)

## Movie Poster
<img src="open-water.png"  width="360px" title="Open Water">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2022

// Open Water (2003)


final color PAPER = color(220, 240, 250);
final color INK = color(0, 80, 130);

final float W =  1.00;
final float H =  0.50;

final float X = -0.50;
final float Y =  0.20;

final float D =  0.07;

final int COUNT  = 5;


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
  
  randomSeed(1);
  
  noStroke();
  
  float h = hue(INK);
  float s = saturation(INK);
  float b = brightness(INK);
  
  colorMode(HSB);
 
  for (int c=0; c<COUNT; c++) {
    fill(h, s, b);
    float d1 = c*(D + 0.01*randomGaussian());
    float d2 = c*(D + 0.01*randomGaussian());
    quad(X, Y+d1, X+W, Y+d2, X+W, Y+H, X, Y+H);
    
    b = 1.1*b;
    s = 0.9*s;
  }
  
  save("open-water.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
