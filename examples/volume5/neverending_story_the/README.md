---
permalink: /examples/volume5/neverending_story_the/
---
# The NeverEnding Story (1984)

Avventura, Drammatico, Ragazzi

## Il film in breve
A troubled boy dives into a wondrous fantasy world through the pages of a mysterious book.

[dettagli](https://www.imdb.com/title/tt0088323/)

## La locandina
<img src="the-neverending-story.png"  width="360px" title="The NeverEnding Story">


## Il codice
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2018

// The Neverending Story (1984)


final color PAPER = color(0);
final color INK1 = color(250, 215, 75);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  translate(0.5*width, 0.5*height);
  scale(S);
  
  background(PAPER);
  
  fill(INK1);
  noStroke();
  
  float x, y;
  
  for (float a=0; a<=2*TWO_PI; a+=0.01) {
    
    if (a<TWO_PI) {
      x = 0.4*cos(a);
      y = 0.4*sin(a);
    } else {
      x = 0.4*cos(a);
      y = 0.35*sin(a)*cos(a);
    }
    
    ellipse(x, y, 0.06, 0.06);
  }
  
  ellipse(0.0, -0.4, 0.2, 0.1);
  ellipse(0.0,  0.4, 0.2, 0.1);

  save("the-neverending-story.png");

}
```
