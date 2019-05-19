---
permalink: /examples/volume1/frozen/
---
# Frozen (2013)

Animation, Adventure, Comedy

## Plot
When the newly crowned Queen Elsa accidentally uses her power to turn things into ice to curse her home in infinite winter, her sister, Anna, teams up with a mountain man, his playful reindeer, and a snowman to change the weather condition.

[details](https://www.imdb.com/title/tt2294629/)

## Movie Poster
<img src="frozen.png"  width="360px" title="Frozen">


## The code
```java
// Manuale di Programmazione Cinematografica - Volume 1
// Daniele Olmisani, 2016

// Frozen


final color PAPER = color(85, 115, 200);
final color INK = color(240, 240, 240);

final int COUNT = 8;


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float s = min(width, height) / 48; 
  
  translate(width/2.0, height/2.0);
  
  background(PAPER);
  
  stroke(INK);
  strokeWeight(s);
  
  for (int i=0; i<COUNT; i++) {
    line(0, 0, 0.4*width, 0);
    for (int k=0; k<5; k++) {
      float step = 0.07*k*width;
      line(step, 0, step+2*s, 2*s);
      line(step, 0, step+2*s, -2*s);
    }
    rotate(TWO_PI / COUNT);
  }
  
  save("frozen.png");
}
```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../LICENSE) file
