---
permalink: /examples/volume2/charlie_s_angels/
---
# Charlie's Angels (2000)

Azione, Avventura, Commedia

## Il film in breve
Three women, detectives with a mysterious boss, retrieve stolen voice-ID software, using martial arts, tech skills, and sex appeal.

[dettagli](https://www.imdb.com/title/tt0160127/)

## La locandina
<img src="charlie-s-angels.png"  width="360px" title="Charlie's Angels">


## Il codice
```processing
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Charlie's Angels

final color PAPER = color(245, 180, 50);
final color INK1 = color(100, 60, 20);
final color INK2 = color(200);

final float W = 100;
final float H = 60;
 
void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, 3*height/5.0);
  
  background(PAPER);
  stroke(INK1);
  fill(INK2);
  
  strokeWeight(10.0);
  strokeJoin(ROUND);
  
  quad(-W, -H, W, -H, 1.1*W, H, -1.1*W, H);
  
  fill(INK1);
  noStroke();
  for (int i=1; i<20; i++) {
    for (int j=3; j<10; j++) {
      ellipse(-W+i*10, -H+j*10, 5, 5);
    }
  }
  
  save("charlie-s-angels.png");
}
```
