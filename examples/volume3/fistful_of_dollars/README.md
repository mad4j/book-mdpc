---
permalink: /examples/volume3/fistful_of_dollars/
---
# A Fistful of Dollars (1964)

Western

## Plot
A wandering gunfighter plays two rival families against each other in a town torn apart by greed, pride, and revenge.

[details](https://www.imdb.com/title/tt0058461/)

## Movie Poster
<img src="fistful-of-dollars.png"  width="360px" title="A Fistful of Dollars">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Fistful of dollars

final color PAPER = color(55, 50, 0);
final color INK = color(170, 165, 120);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, 0);
  
  background(PAPER);
  
  strokeWeight(20);
  stroke(INK);
  noFill();
  
  rectMode(CENTER);
  rect(-200,   0, 50, 50);
  rect(-150,  50, 50, 50);
  rect(-100, 100, 50, 50);
  rect( -50, 150, 50, 50);
  
  rect(   0, 200, 50, 50);
  
  rect( 50, 150, 50, 50);
  rect(100, 100, 50, 50);
  rect(150, 50, 50, 50);
  rect(200, 0, 50, 50);
  
  strokeCap(SQUARE);
  
  line(-150, 250, -200, 250);
  line(-200, 240, -200, 290);
  line(-200, 280, -75, 280);
  line(-85, 270, -85, 320);
  line(-75, 310, -125, 310);
  
  line(150, 250, 200, 250);
  line(200, 240, 200, 290);
  line(200, 280, 75, 280);
  line(85, 270, 85, 320);
  line(75, 310, 125, 310);
  
  line(-25, 50, 25, 50);
  line(-60, 25, -10, 25);
  line( 60, 25, 10, 25);
  
  line(-25, 400, 25, 400);
  line(200, 500, 150, 500);
  line(-200, 500, -150, 500);
  line(-25, 600, 25, 600);
  
  save("fistful-of-dollars.png");
}
```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
