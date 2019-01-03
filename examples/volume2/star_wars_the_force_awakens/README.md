---
permalink: /examples/volume2/star_wars_the_force_awakens/
---
# Star Wars: The Force Awakens (2015)

Azione, Avventura, Fantascico

## Il film in breve
Three decades after the defeat of the Galactic Empire, a new threat arises. The First Order attempts to rule the galaxy and only a ragtag group of heroes can stop them, along with the help of the Resistance.

[details](https://www.imdb.com/title/tt2488496/)

## Movie Poster
<img src="star-wars-the-force-awakens.png"  width="360px" title="Star Wars: The Force Awakens">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// Star Wars The Force awakens

final color PAPER = color(220, 210, 170);
final color INK1 = color(255);
final color INK2 = color(0);
final color INK3 = color(210, 135, 10);

void setup() {
  size(480, 640);
  noLoop();
}
 
void draw() {
  
  translate(width/2.0, height/2.0);
  scale(min(width, height) / 240.0 );
  
  background(PAPER);
  
  fill(INK1);
  stroke(INK3);
  
  strokeWeight(3.0);
  
  //body
  ellipse(0, 0, 130, 130);
  
  arc(0, -72, 80, 80, -PI, 0);
  arc(0, -72, 80, 23, 0, PI);
  
  fill(INK2);
  ellipse(0, -92, 15, 15);
  ellipse(18, -80, 8, 8);
  
  noStroke();
  
  fill(INK3);
  ellipse(-13, 6, 60, 60);
  
  fill(INK1);
  ellipse(-13, 6, 42, 42);
  
  save("star-wars-the-force-awakens.png");
}
```

> MdPC - a collection of minimalist movie posters
