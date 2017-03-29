# Iron Man (2008)

Azione, Avventura, Fantascienza

## Il film in breve
After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.

[dettagli](https://www.imdb.com/title/tt0371746/)

## La locandina
<img src="iron-man.png"  width="360px" title="Iron Man">


## Il codice
```processing
// Manuale di Programmazione Cinematografica - Volume 1
// Daniele Olmisani, 2016

// Iron Man


final color PAPER = color(180, 5, 30);
final color INK = color(255, 235, 0);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  float s = min(width, height);
  
  translate(width/2.0, height/2.0);
  scale(s / 480, (-1.33*s) / 640);
  
  background(PAPER);
  
  noStroke();
  
  ellipseMode(CENTER);
  
  fill(INK);
  ellipse(0, 0, 220, 220);
  
  fill(PAPER);
  ellipse(0, 0, 160, 160);
  
  rotate(TWO_PI/16);
  
  fill(PAPER);
  for (int i=0; i<8; i++) {
    rotate(TWO_PI/8);
    quad(0, 0, 220, 45, 220, -45, 0, 0);
  }
  
  fill(INK);
  ellipse(0, 0, 100, 100);
  
  save("iron-man.png");
}
```
