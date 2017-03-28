# Kill Bill: Vol. 1 (2003)



## Il film in breve
TBV

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
