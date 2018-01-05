---
permalink: /examples/volume3/thin_red_line_the/
---
# The Thin Red Line (1998)

Drammatico, Guerra

## Il film in breve
Terrence Malick's adaptation of James Jones' autobiographical 1962 novel, focusing on the conflict at Guadalcanal during the second World War.

[dettagli](https://www.imdb.com/title/tt0120863/)

## La locandina
<img src="the-thin-red-line.png"  width="360px" title="The Thin Red Line">


## Il codice
```java
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// The thin red line

final color PAPER = color(240, 240, 240);
final color INK = color(190, 0, 50);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  background(PAPER);
  stroke(INK);
  line(0, height/2.0, width, height/2.0);
  
  save("the-thin-red-line.png");
}
  
```
