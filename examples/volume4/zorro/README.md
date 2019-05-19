---
permalink: /examples/volume4/zorro/
---
# Zorro (1975)

Action, Adventure, Comedy

## Plot
In the New World, a new Spanish governor finds the province of Nueva Aragón under the iron fist of the corrupt Colonel Huerta and vows to bring justice under the guise of a masked avenger.

[details](https://www.imdb.com/title/tt0072448/)

## Movie Poster
<img src="zorro.png"  width="360px" title="Zorro">


## The code
```java
// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2016

// Zorro


final color PAPER = color(35);
final color INK = color(240);


void setup() { 
  size(480, 640);
  noLoop();
}


void draw() {
  
  randomSeed(100);
  
  float s = 0.3 * min(width, height);
  float w = 0.03 * s;
  
  translate(width/2.0, height/2.0);
  
  background(PAPER);
  stroke(INK);
  
  handDraw(-s,     -s,  s,     -s, w);
  handDraw( s,     -s, -s,  0.8*s, w);
  handDraw(-s,  0.8*s,  s,  0.8*s, w);
  
  save("zorro.png");
}


void handDraw(float x1, float y1, float x2, float y2, float w) {
  
  strokeWeight(w);
  
  for (int i=0; i<w*4; i++) {
    float d1 = (0.8*w)*randomGaussian();
    float d2 = (0.8*w)*randomGaussian();
    float d3 = (0.8*w)*randomGaussian();
    float d4 = (0.8*w)*randomGaussian();
    line(x1+d1, y1+d2, x2+d3, y2+d4);
  } 
}
```

> MdPC - a collection of minimalist movie posters
> by Daniele Olmisani
> Please, see [LICENSE](../../LICENSE) file
