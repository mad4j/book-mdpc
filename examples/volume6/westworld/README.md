---
permalink: /examples/volume6/westworld/
title: Westworld (1973) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Westworld (1973)

Action, Sci-Fi, Thriller

## Plot
A robot malfunction creates havoc and terror for unsuspecting vacationers at a futuristic, adult-themed amusement park.

[details](https://www.imdb.com/title/tt0070909/)

## Movie Poster
<img src="westworld.png"  width="360px" title="Westworld">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2022

// Westworld (1973)


final color PAPER = color(10, 100, 40);
final color INK = color(165, 195, 80);

final float dL = 0.05;
final float dA = QUARTER_PI;

final String P = "d2r9frfl5fu 2lflfl14f4r d9fu rfl d3f2lf2l3f2rf2r3fu" + 
                 "f2r d2fu 2r9frfrf2r d4flflf2r2flfu  r d2fl2fl3fu 2r" +
                 "d2frfr4fr2fu r df2l2fl2fu 4l6f3r d2fu";


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S = min(width, height);
  final float U = 0.002;
  
  translate(0.2*width, 0.2*height);
  scale(S);
  
  background(PAPER);
  
  fill(PAPER);
  stroke(INK);
  strokeWeight(5*U);
  
  drawTurtle(P, dL, dA);
  
  save("westworld.png");
}


void drawTurtle(String path, float dL, float dA) {
  
  int k = 0;
  boolean penDown = false;
  boolean firstStep = true;
  
  for (int i=0; i<path.length(); i++) {
    
    char c = path.charAt(i);
    
    switch (c) {
      
      case 'u':
        ellipse(0, 0, 0.5*dL, 0.5*dL);
        penDown = false;
        break;
      case 'd':
        penDown = true;
        firstStep = true;
        break;
      case 'f':
        if (k==0) k=1;
        if (penDown) {
          line(0, 0, k*dL, 0);
          if (firstStep) {
            ellipse(0, 0, 0.5*dL, 0.5*dL);
            firstStep = false;
          }
        }
        translate(k*dL, 0);
        k=0;
        break;
      case 'r':
        if (k==0) k=1;
        rotate(k*dA);
        k=0;
        break;
      case 'l':
        if (k==0) k=1;
        rotate(-k*dA);
        k=0;
        break;
      case '1': case '2': 
      case '3': case '4':
      case '5': case '6':
      case '7': case '8':
      case '9': case '0':
        k = 10*k + c-'0'; 
        break;
      default:
        break;
    }
  }
  
  ellipse(0, 0, 0.5*dL, 0.5*dL);
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
