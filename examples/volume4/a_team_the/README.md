---
permalink: /examples/volume4/a_team_the/
---
# The A-Team (2010)

Azione, Avventura, Commedia

## Il film in breve
A group of Iraq War veterans looks to clear their name with the U.S. military, who suspect the four men of committing a crime for which they were framed.

[dettagli](https://www.imdb.com/title/tt0429493/)

## La locandina
<img src="the-a-team.png"  width="360px" title="The A-Team">


## Il codice
```processing
// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2017

// The A-Team (2010)
// Action, Adventure, Comedy
// http://www.imdb.com/title/tt0429493/


final color PAPER = color(0);
final color INK1 = color(65, 65, 75);
final color INK2 = color(190, 0, 0);


void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  final float S = min(width, height);
  final float U = 0.002;

  translate(0.6*width, 0.5*height);
  scale(S);
  
  background(PAPER);
  
  fill(INK1);
  noStroke();
  quad(-2.0, -1.5, 0.0, 0.0, 2.0, 0.0, -1.5, -2.0);
  
  fill(INK2);
  stroke(INK2);
  strokeWeight(12*U);
  
  line(0.0, 0.0, 2.0, 0.0);
  triangle(-2.0, -1.5, 0.0, 0.0, -2.0, -1.3);
  
  save("the-a-team.png");
}
```
