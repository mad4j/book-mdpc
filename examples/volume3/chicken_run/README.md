---
permalink: /examples/volume3/chicken_run/
---
# Chicken Run (2000)

Animation, Adventure, Comedy

## Plot
When a cockerel apparently flies into a chicken farm, the chickens see him as an opportunity to escape their evil owners.

[details](https://www.imdb.com/title/tt0120630/)

## Movie Poster
<img src="chicken-run.png"  width="360px" title="Chicken Run">


## The code
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// Chicken run

final color PAPER = color(240);
final color INK = color(230, 140, 35);

final color STEPS = 15;

void setup() {
  size(480, 640);
  noLoop();
}


void draw() {

  randomSeed(10);
  
  float d = min(width, height) / (float)STEPS;
  
  translate(width/2.0, 1.5*d);
  
  background(PAPER);
  stroke(INK);
  strokeWeight(0.16*d);
  
  for (int i=0; i<0.8*STEPS; i++) {
    drawFootprint(0, 0, d);
    drawFootprint(2.0*d, 0.3*d, d);
    translate(random(-d, d), 2.5*d);
  }
  
  save("chicken-run.png");
}


void drawFootprint(float x, float y, float s) {
  
  pushMatrix();
  
    translate(x, y);
    //rotate(0.01*PI);
    
    line(     0, -s, 0, 0.3*s);
    line(-0.5*s, -s, 0,     0);
    line( 0.5*s, -s, 0,      0);
  
  popMatrix();
  
}
```

> MdPC - a collection of minimalist movie posters

> by Daniele Olmisani

> Please, see [LICENSE](../../../LICENSE) file
