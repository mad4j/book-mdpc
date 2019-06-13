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
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// Love Story (1970)


final color PAPER = color(240);
final color INK = color(190, 0, 50);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  final float L = 0.40;
  
  translate(0.5*width, 0.3*height);
  scale(L*S);
   
  background(PAPER);
  fill(INK);
  noStroke();
  
  ellipseMode(CENTER);
  
  pushMatrix();
  rotate(-QUARTER_PI);
  translate(-0.5, 0);
  
  ellipse(0, 0, 1, 1);
  rect(-.5, 0, 1, 1);
  
  popMatrix();
  rotate(QUARTER_PI);
  translate(0.5, 0);
  
  ellipse(0, 0, 1, 1);
  
  save("love-story.png");
}

```

> MdPC - a collection of minimalist movie posters

> by Daniele Olmisani

> Please, see [LICENSE](../../../LICENSE) file
