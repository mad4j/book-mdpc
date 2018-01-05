---
permalink: /examples/volume1/social_network_the/
---
# The Social Network (2010)

Biografico, Drammatico

## Il film in breve
Harvard student Mark Zuckerberg creates the social networking site that would become known as Facebook, but is later sued by two brothers who claimed he stole their idea, and the co-founder who was later squeezed out of the business.

[dettagli](https://www.imdb.com/title/tt1285016/)

## La locandina
<img src="the-social-network.png"  width="360px" title="The Social Network">


## Il codice
```processing
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// The Social Network


final color PAPER = color(60, 90, 150);
final color INK = color(255);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float s = 0.2 * min(width, height);
  
  translate(width/2.0, height/4.0);
  
  background(PAPER);
  stroke(INK);
  
  strokeCap(PROJECT);
  strokeJoin(ROUND);
  
  noFill();
  
  strokeWeight(s);
  beginShape();
    vertex(width/5.0, 0);
    vertex(0, 0);
    vertex(0, height/2.0); 
  endShape();
  
  strokeWeight(0.8*s);
  line(-width/8.0, height/4.0, width/5.0, height/4.0);
  
  save("the-social-network.png");
}
```
