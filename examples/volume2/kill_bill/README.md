---
permalink: /examples/volume2/kill_bill/
---
# Kill Bill: Vol. 1 (2003)

Azione, Poliziesco, Giallo

## Il film in breve
The Bride wakens from a four-year coma. The child she carried in her womb is gone. Now she must wreak vengeance on the team of assassins who betrayed her - a team she was once part of.

[dettagli](https://www.imdb.com/title/tt0266697/)

## La locandina
<img src="kill-bill.png"  width="360px" title="Kill Bill: Vol. 1">


## Il codice
```processing
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Kill Bill

final color PAPER = color(255, 195, 25);
final color INK = color(30);

final int SIZE = 50;

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(PAPER);
  
  stroke(INK);
  strokeWeight(SIZE);
  
  line(2*SIZE, 0, 2*SIZE, height);
  
  save("kill-bill.png");
}
```
