# Alice in Wonderland (1951)

Animazione, Avventura

## Il film in breve
Le ragazzine troppo curiose fanno strani incontri e rischiano di perdere la testa.

[details](https://www.imdb.com/title/tt0043274/)

## La locandina
<img src="alice-in-wonderland.png"  width="360px" title="Alice in Wonderland">


## Il codice
```processing
// Manuale di Programmazione Cinematografica - Volume 1
// Daniele Olmisani, 2016

// Alice in Wonderland (1951)


final color PAPER = color(230, 145, 170);
final color INK = color(245);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float size = 0.625 * min(width, height);
  
  translate(width/2.0, height/3.0);
  
  background(PAPER);
  
  noStroke();
  
  fill(INK);
  ellipse(0, 0, size, size);
  
  fill(PAPER);
  ellipse(0, -0.17*size, 1.08*size, size);
  
  stroke(PAPER);
  for (float i=-size; i<size; i+=size/8) {
    line(i, 0, i, height); 
  }
  
  save("alice-in-wonderland.png");
}
```
