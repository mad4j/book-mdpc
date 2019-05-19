---
permalink: /examples/volume5/toy_story/
---
# Toy Story (1995)

Animation, Adventure, Comedy, Family, Fantasy

## Plot
A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy's room.

[details](https://www.imdb.com/title/tt0114709/)

## Movie Poster
<img src="toy-story.png"  width="360px" title="Toy Story">


## The code
```java
// Manuale di Programmazione Cinematografica - Volume 5
// Daniele Olmisani, 2019

// Toy Story (1995)


final color PAPER = color(125, 155, 185);
final color INK = color(255);


void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  randomSeed(0);
  
  translate(0.5*width, 0.5*height);
  scale(S);
  
  background(PAPER);
  
  strokeCap(ROUND);
  strokeWeight(8*U);
  
  drawCloud(-0.2, -0.4, 1.0);
  drawCloud(-0.3, -0.2, 0.8);
  drawCloud( 0.2, -0.1, 1.5);
  drawCloud(-0.1,  0.1, 1.0);
  drawCloud( 0.3,  0.3, 1.2);
  drawCloud(-0.2,  0.5, 1.0);
  
  save("toy-story.png");
}

void drawCloud(float x, float y, float s) {
  
  pushMatrix();
  
    translate(x, y);
    scale(s);
  
    stroke(INK);
    line(-0.12, 0.00, 0.10, 0.00);
    
    fill(INK);
    noStroke();
    ellipse(-0.02, -0.027, 0.13, 0.07);
    ellipse( 0.05, -0.040, 0.09, 0.08);
    ellipse( 0.00, -0.070, 0.10, 0.12);
  popMatrix();
}

```

> MdPC - a collection of minimalist movie posters

> by Daniele Olmisani

> Please, see [LICENSE](../../../LICENSE) file
