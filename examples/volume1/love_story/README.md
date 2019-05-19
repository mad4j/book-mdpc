---
permalink: /examples/volume1/love_story/
---
# Love Story (1970)

Drama, Romance

## Plot
A boy and a girl from different backgrounds fall in love regardless of their upbringing - and then tragedy strikes.

[details](https://www.imdb.com/title/tt0066011/)

## Movie Poster
<img src="love-story.png"  width="360px" title="Love Story">


## The code
```java
// Manuale di Programmazione Cinematografica - Volume 1
// Daniele Olmisani, 2016

// Love Story


final color PAPER = color(240);
final color INK = color(190, 0, 50);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float s = 0.35 * min(width, height);
  
  translate(width/2.0, height/3.0);
  
  background(PAPER);
  fill(INK);
  noStroke();
  
  ellipseMode(CENTER);
  
  pushMatrix();
  rotate(-QUARTER_PI);
  translate(-s/2.0, 0);
  
  ellipse(0, 0, s, s);
  rect(-s/2.0, 0, s, s);
  
  popMatrix();
  rotate(QUARTER_PI);
  translate(s/2.0, 0);
  
  ellipse(0, 0, s, s);
  
  save("love-story.png");
}
```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../LICENSE) file
