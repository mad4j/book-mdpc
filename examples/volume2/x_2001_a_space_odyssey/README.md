---
permalink: /examples/volume2/x_2001_a_space_odyssey/
---
# 2001: A Space Odyssey (1968)

Avventura, Fantascienza

## Il film in breve
Humanity finds a mysterious, obviously artificial object buried beneath the Lunar surface and, with the intelligent computer H.A.L. 9000, sets off on a quest.

[dettagli](https://www.imdb.com/title/tt0062622/)

## La locandina
<img src="2001-a-space-odyssey.png"  width="360px" title="2001: A Space Odyssey">


## Il codice
```processing
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// 2001 A Space Odyssey

final color PAPER = color(255,228,181);
final color INK1 = color(0);
final color INK2 = color(64);

void setup()  {
  size(480, 640, OPENGL);
  smooth(8);
  noLoop();
}

void draw()  {
  
  float fov = PI/3.0;
  float camZ = (height/2.0) / tan(fov/2.0); 
  float aspect =  float(width)/float(height);
  perspective(fov, aspect, camZ/2.0, camZ*2.0); 
  
  translate(width/2.0, height/2.0, 0);
  rotateX(-PI/6); 
  rotateY(PI/3);
  
  background(PAPER);
  lights();
  
  fill(INK1);
  stroke(INK2);
  strokeWeight(2.0); 
  box(40, 360, 160); 
  
  save("2001-a-space-odyssey.png");
}

```
