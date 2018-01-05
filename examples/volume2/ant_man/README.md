---
permalink: /examples/volume2/ant_man/
---
# Ant-Man (2015)

Azione, Avventura, Commedia

## Il film in breve
Armed with a super-suit with the astonishing ability to shrink in scale but increase in strength, cat burglar Scott Lang must embrace his inner hero and help his mentor, Dr. Hank Pym, plan and pull off a heist that will save the world.

[dettagli](https://www.imdb.com/title/tt0478970/)

## La locandina
<img src="ant-man.png"  width="360px" title="Ant-Man">


## Il codice
```processing
// Manuale di Programmazione Cinematografica - Volume 2
// Daniele Olmisani, 2016

// Ant Man


final color PAPER = color(240);
final color INK = color (0);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float s = min(width, height) / 240.0;
  
  translate(width/2.0, height/1.5);
  scale(s);
  
  background(PAPER);
  stroke(INK);
  
  line( 0, 0,  0, 2);
  line(-1, 1,  1, 1);
  line(-1, 3, -1, 3);
  line( 1, 3,  1, 3);
  
  filter(BLUR, s/2.0);
  
  save("ant-man.png");
}
```
