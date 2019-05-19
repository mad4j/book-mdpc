---
permalink: /examples/volume2/big_hero_6/
---
# Big Hero 6 (2014)

Animation, Action, Adventure

## Plot
The special bond that develops between plus-sized inflatable robot Baymax, and prodigy Hiro Hamada, who team up with a group of friends to form a band of high-tech heroes.

[details](https://www.imdb.com/title/tt2245084/)

## Movie Poster
<img src="big-hero-6.png"  width="360px" title="Big Hero 6">


## The code
```java

// Manuale di Programmazione Cinematografica - Volume 2
// Daniele Olmisani, 2015

// Big Hero 6


final color PAPER = color(245);
final color INK = color(30);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float size = 0.125*width;
  
  translate(width/2.0, height/3.0);
  
  background(PAPER);
  fill(INK);
  noStroke();
  
  ellipseMode(CENTER);
  ellipse(-width/4.0, 0, size, size);
  ellipse( width/4.0, 0, size, size);
  
  stroke(INK);
  strokeWeight(size/10.0);
  line(-width/4.0, 0, width/4.0, 0);
  
  save("big-hero-6.png");
}
```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../LICENSE) file
