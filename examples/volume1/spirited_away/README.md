---
permalink: /examples/volume1/spirited_away/
---
# Spirited Away (2001)

Animation, Adventure, Family

## Plot
During her family's move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.

[details](https://www.imdb.com/title/tt0245429/)

## Movie Poster
<img src="spirited-away.png"  width="360px" title="Spirited Away">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// Spirited away (2011)


final color PAPER = color(20);
final color INK1 = color(205, 195, 180);
final color INK2 = color(145, 35, 35);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  final float L = 2.0/3.0;
  
  translate(0.5*width, 0.5*height);
  scale(L*S);
  
  background(PAPER);
  
  noStroke();
  
  fill(INK1);
  ellipse(0.0, 0.0, 1.0, 1.3);
  
  fill(INK2);
  ellipse(0.0, 0.0, 0.7, 1.1);
  
  rectMode(CENTER);
  
  fill(INK1);
  rect(0.00,  0.00, 0.40, 1.10);
  rect(0.00, -0.10, 0.90, 0.25);
  
  fill(PAPER, 70);
  rect(0.5, 0.0, 1.0, 1.5);
  
  fill(PAPER);
  rect(0, 0.5, 0.25, 0.09, 1);
  
  ellipse(-0.26, -0.1, 0.2, 0.1);
  ellipse( 0.26, -0.1, 0.2, 0.1);
  
  save("spirited-away.png");
}

```

> MdPC - a collection of minimalist movie posters

> by Daniele Olmisani

> Please, see [LICENSE](../../../LICENSE) file
