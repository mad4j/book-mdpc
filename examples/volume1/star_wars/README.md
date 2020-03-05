---
permalink: /examples/volume1/star_wars/
---
# Star Wars: Episode IV - A New Hope (1977)

Action, Adventure, Fantasy

## Plot
Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a wookiee and two droids to save the galaxy from the Empire's world-destroying battle-station, while also attempting to rescue Princess Leia from the evil Darth Vader.

[details](https://www.imdb.com/title/tt0076759/)

## Movie Poster
<img src="star-wars.png"  width="360px" title="Star Wars: Episode IV - A New Hope">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Star Wars (1977)


final color PAPER = color(35);
final color INK = color(130);

void setup() {  
  size(480, 640);
  noLoop();
}

void draw() {
  
  final float S =  min(width, height);
  
  translate(0.5*width, 0.5*height);
  scale(S);
  
  background(PAPER);
  
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  noStroke();
  
  fill(INK);
  ellipse(0.0, 0.0, 0.6, 0.6);
  
  fill(PAPER);
  rect(0, 0, 0.6, 0.01);
  ellipse(0.13, -0.13, 0.15, 0.15);
  
  save("star-wars.png");
}

```

> MdPC - a collection of minimalist movie posters

> by Daniele Olmisani

> Please, see [LICENSE](../../../LICENSE) file
