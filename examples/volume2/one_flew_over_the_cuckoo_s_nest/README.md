# One Flew Over the Cuckoo's Nest (1975)

Drammatico

## Il film in breve
A criminal pleads insanity after getting into trouble again and once in the mental institution rebels against the oppressive nurse and rallies up the scared patients.

[dettagli](https://www.imdb.com/title/tt0073486/)

## La locandina
<img src="one-flew-over-the-cukoo-s-nest.png"  width="360px" title="One Flew Over the Cuckoo's Nest">


## Il codice
```processing
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// One flew over the cukoo's nest

final color PAPER = color(240, 240, 240);
final color INK = color(30, 30, 30);

final int SIZE = 250;

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {

  translate(width/2.0, height/2.0);
  
  background(PAPER);
  fill(INK);
  
  noStroke();
  
  ellipseMode(CENTER);
  arc(0, -0.05*SIZE, SIZE, SIZE, -PI, 0);
  
  rectMode(CENTER);
  rect(0, 0.05*SIZE, 1.05*SIZE, 0.25*SIZE, 10);
  
  save("one-flew-over-the-cukoo-s-nest.png");
}
```
