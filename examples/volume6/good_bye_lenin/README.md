---
permalink: /examples/volume6/good_bye_lenin/
title: Good Bye Lenin! (2003) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Good Bye Lenin! (2003)

Comedy, Drama, Romance

## Plot
In 1990, to protect his fragile mother from a fatal shock after a long coma, a young man must keep her from learning that her beloved nation of East Germany as she knew it has disappeared.

[details](https://www.imdb.com/title/tt0301357/)

## Movie Poster
<img src="good-bye-lenin.png"  width="360px" title="Good Bye Lenin!">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2022

// Good Bye Lenin! (2003)


final color PAPER = color(200, 0, 20);
final color INK1 = color(255, 220, 25);
final color INK2 = color(255);

final float[] P = {
  -0.5, 0.0,  0.0,   0.2,  0.2, -0.08, 0.5, 0.06,
   0.5, 0.12, 0.15, -0.1, -0.1,  0.2, -0.5, 0.1
};

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  randomSeed(0);
  
  translate(0.5*width, 0.3*height);
  scale(S);
  
  background(PAPER);
  
  noFill();
  stroke(INK1);
  strokeWeight(10*U);
  drawStar(0.0, 0.0, 0.2, 0.08);
  
  translate(0.0, 0.5);
  
  fill(INK2);
  noStroke();
  drawRibbon(P);

  save("good-bye-lenin.png");
 }

void drawStar(float x, float y, float r1, float r2) {
  
  float angle = TWO_PI / 5;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0.5*halfAngle; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * r2;
    float sy = y + sin(a) * r2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * r1;
    sy = y + sin(a+halfAngle) * r1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

void drawRibbon(float[] p) {
  beginShape();
    vertex(p[0], p[1]);
    bezierVertex(p[2], p[3], p[4], p[5], p[6], p[7]);
    vertex(p[8], p[9]);
    bezierVertex(p[10], p[11], p[12], p[13], p[14], p[15]);  
  endShape(CLOSE);
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
