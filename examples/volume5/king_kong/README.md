---
permalink: /examples/volume5/king_kong/
---
# King Kong (1933)

Adventure, Horror, Sci-Fi

## Plot
A film crew goes to a tropical island for an exotic location shoot and discovers a colossal ape who takes a shine to their female blonde star. He is then captured and brought back to New York City for public exhibition.

[details](https://www.imdb.com/title/tt0024216/)

## Movie Poster
<img src="king-kong.png"  width="360px" title="King Kong">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2018

// King Kong (1933)


final color PAPER = color(195, 190, 155);
final color INK1 = color(75);
final color INK2 = color(30);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  translate(0.3*width, 0.3*height);
  scale(S);
  
  background(PAPER);
  
  stroke(INK1);
  strokeCap(SQUARE);
  
  strokeWeight(8*U);
  line(0, 0, 0, 1);
  
  strokeWeight(40*U);
  line(0, 0.09, 0, 1);
  
  strokeWeight(60*U);
  line(0, 0.12, 0, 1);
  
  strokeWeight(80*U);
  line(0, 0.15, 0, 1);
  
  strokeWeight(100*U);
  line(0, 0.18, 0, 1);
  
  pushMatrix();
  translate(-0.085, 0.22);
  rotate(0.1*QUARTER_PI);
  drawHand();
  
  popMatrix();
  translate(0.085, 0.32);
  rotate(-0.1*QUARTER_PI);
  drawHand();
  
  save("king-kong.png");
}


void drawHand() {
  
  fill(INK2);
  noStroke();
  
  rectMode(CENTER);
  
  rect(0.00, 0.00, 0.07, 0.03, 0.04);
  rect(0.00, 0.03, 0.07, 0.03, 0.04);
  rect(0.00, 0.06, 0.07, 0.03, 0.04);
}
```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../../LICENSE) file
