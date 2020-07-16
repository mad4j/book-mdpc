---
permalink: /examples/volume3/alien/
title: Alien (1979) | Minimalist Movie Poster
description: Minimalist Movie Poster generated using Java and Processing.
---

# Alien (1979)

Horror, Sci-Fi

## Plot
After a space merchant vessel perceives an unknown transmission as distress call, their landing on the source moon finds one of the crew attacked by a mysterious life-form, and soon realize that its life cycle has merely begun.

[details](https://www.imdb.com/title/tt0078748/)

## Movie Poster
<img src="alien.png"  width="360px" title="Alien">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Alien (1979)


final color PAPER = color(30);
final color INK = color(225);

final float TEETH = 10;;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  PGraphics g = drawMounth();
  
  image(g, 0, 0);
  scale(0.25);
  image(g, 1.5*width,1.5* height);

  save("alien.png");
}


PGraphics drawMounth() {
  
  PGraphics g = createGraphics(width, height);
  
  g.beginDraw();
  g.background(PAPER);
  g.fill(INK);
  g.noStroke();

  g.scale(g.width/TEETH, g.height/TEETH);
  drawTeeth(g);
  
  g.resetMatrix();
  g.translate(0, g.height);
  g.scale(g.width/TEETH, -g.height/TEETH);
  drawTeeth(g);
  g.endDraw();
  
  return g;
}

void drawTeeth(PGraphics g) {
  g.rect(0, 0, g.width/TEETH, 0.2);
  for(int i=0; i<TEETH; i++) {
     g.triangle(i, 0.19, i+1, 0.19, i+0.5, (i==0 || i==TEETH-1) ? 2.5 : 1);
  }
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
