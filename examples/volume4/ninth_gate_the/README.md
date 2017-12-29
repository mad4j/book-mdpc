# The Ninth Gate (1999)

Mystery, Giallo

## Il film in breve
A rare book dealer, while seeking out the last two copies of a demon text, gets drawn into a conspiracy with supernatural overtones.

[dettagli](https://www.imdb.com/title/tt0142688/)

## La locandina
<img src="the-ninth-gate.png"  width="360px" title="The Ninth Gate">


## Il codice
```processing
// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2017

// The Ninth Gate (1999)


final color PAPER = color(0);
final color INK = color(250, 180, 50);

final float A = TWO_PI / 5;
final float R = 0.3;
final float L = 0.05;
final float D = L / tan(0.25*A);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;  
  
  translate(0.5*width, 0.5*height);
  scale(S);
  
  background(PAPER);
  
  for (int i=0; i<11; i++) {
  
    noStroke();
    fill(PAPER);
    quad(-R, 0.0, 0.0, 0.0, 0.0, L, -R-D, L);
    
    stroke(INK);
    strokeWeight(5*U);
    line(-R, 0.0, 0.0, 0.0);
    line(-R-D, L, +0.0, L);
    
    scale(-1, 1);
    
    if (i%2 != 0) {
      translate(-R, 0.0);
      rotate(2*A);
      translate(-R, 0.0);
    }
  } 

  save("the-ninth-gate.png");
}
```
