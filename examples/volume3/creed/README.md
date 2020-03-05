---
permalink: /examples/volume3/creed/
---
# Creed (2015)

Drama, Sport

## Plot
The former World Heavyweight Champion Rocky Balboa serves as a trainer and mentor to Adonis Johnson, the son of his late friend and former rival Apollo Creed.

[details](https://www.imdb.com/title/tt3076658/)

## Movie Poster
<img src="creed.png"  width="360px" title="Creed">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// Creed

final color PAPER = color(20, 35, 85);

final color INK1 = color(225, 0, 20);
final color INK2 = color(255);

final int STRIPES = 5;

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(PAPER);
  noStroke();
  
  float deltaX = width/STRIPES;
  float deltaY = height/4.0;
  
  fill(INK2);
  for (int i=0; i<STRIPES; i++) {
    star((0.5+i)*deltaX, deltaY/2.0, 0.6);
  }
    
  translate(0, deltaY);
  
  fill(INK2);
  for (int i=0; i<STRIPES; i++) {
    fill(i%2==0 ? INK1 : INK2);
    rect(i*deltaX, 0, deltaX, 3*deltaY);
  }
  
  save("creed.png");
}

void star(float x, float y, float size) {
  
  pushMatrix();
    translate(x, y);
    scale(size, size);
    beginShape();
      vertex(0, -50);
      vertex(29, 40);
      vertex(-47, -15);
      vertex(47, -15);
      vertex(-29, 40);
    endShape(CLOSE);
  popMatrix();
}
```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
