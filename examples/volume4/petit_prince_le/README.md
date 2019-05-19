---
permalink: /examples/volume4/petit_prince_le/
---
# The Little Prince (2015)

Animation, Adventure, Drama

## Plot
A little girl lives in a very grown-up world with her mother, who tries to prepare her for it. Her neighbor, the Aviator, introduces the girl to an extraordinary world where anything is possible, the world of the Little Prince.

[details](https://www.imdb.com/title/tt1754656/)

## Movie Poster
<img src="le-petit-prince.png"  width="360px" title="The Little Prince">


## The code
```java
// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2017

// Le Petit Prince (2015)
// Animation, Adventure, Drama
// http://www.imdb.com/title/tt1754656/


final color PAPER = color(255, 230, 100);
final color INK1 = color(35);
final color INK2 = color(220, 80, 30);
final color INK3 = color(100, 145, 140);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S = min(width, height);
  final float U = 0.002;
  
  translate(0.5*width, 0.4*height);
  scale(S);
  
  background(PAPER);
  
  fill(240);
  stroke(INK1);
  strokeWeight(8*U);
  
  triangle(-0.05, 0.02, -0.28, -0.4, -0.22, 0.03);
  triangle( 0.05, 0.02,  0.28, -0.4,  0.22, 0.03);
  
  fill(INK2);
  noStroke();
  
  beginShape();
    vertex(-0.15, -0.10);
    vertex( 0.15, -0.10);
    vertex( 0.25,  0.00);
    vertex( 0.00,  0.40);
    vertex(-0.25,  0.00);
  endShape(CLOSE);
  
  fill(INK1);
  triangle(0.00, 0.40, -0.035, 0.35, 0.035, 0.35);
  
  drawButton(-0.1, 0.02, 0.1, INK3, INK1);
  drawButton( 0.1, 0.02, 0.1, INK3, INK1);
  
  save("le-petit-prince.png");
}


void drawButton(float x, float y, float s, color c1, color c2) {
  
  pushMatrix();
  translate(x, y);

  float l0 = 0.07*s;
  float l1 = 0.11*s;
  float l2 = 0.16*s;
  
  fill(c1);
  stroke(c2);
  
  strokeWeight(l0);
  
  ellipseMode(CENTER);
  ellipse(0, 0, s, s);
  
  fill(c2);
  noStroke();
  
  rotate(-PI/3.0);
  
  ellipse(-l1, -l1, l2, l2);
  ellipse( l1, -l1, l2, l2);
  ellipse( l1,  l1, l2, l2);
  ellipse(-l1,  l1, l2, l2);
   
  popMatrix();
}
```

> MdPC - a collection of minimalist movie posters

> by Daniele Olmisani

> Please, see [LICENSE](../../../LICENSE) file
