---
permalink: /examples/volume1/finding_nemo/
---
# Finding Nemo (2003)

Animation, Adventure, Comedy

## Plot
After his son is captured in the Great Barrier Reef and taken to Sydney, a timid clownfish sets out on a journey to bring him home.

[details](https://www.imdb.com/title/tt0266543/)

## Movie Poster
<img src="finding-nemo.png"  width="360px" title="Finding Nemo">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// Finding Nemo (2003)


final color PAPER = color(245, 130, 0);
final color INK1 = color(250);
final color INK2 = color(35);

final float STROKE = 10.0;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  background(PAPER);
  
  fill(INK1);
  stroke(INK2);
  strokeWeight(STROKE);
  
  float dx = width/3.0;
  float dy = height/3.0;

  beginShape();
    curveVertex(0, dy+150);
    curveVertex(0, dy);
    curveVertex(dx, dy+20);
    curveVertex(2*dx, dy-15);
    curveVertex(width+STROKE, dy);
    curveVertex(width+STROKE, dy-200);
    curveVertex(width+STROKE, 2*dy);
    curveVertex(width+STROKE, 2*dy);
    curveVertex(2*dx, 2*dy+5);
    curveVertex(dx, 2*dy+50);
    curveVertex(0, 2*dy);
    curveVertex(0, 2*dy+50);
  endShape();
  
  save("finding-nemo.png");
}

```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
