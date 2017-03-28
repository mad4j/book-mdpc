# The Fifth Element (1997)



## Il film in breve
TBV

[dettagli](https://www.imdb.com/title/tt0119116/)

## La locandina
<img src="the-fifth-element.png"  width="360px" title="The Fifth Element">


## Il codice
```processing
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// The Fift Element


final color PAPER = color(255, 173, 96);
final color INK = color(240);

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {

  background(PAPER);
  
  float s = min(width, height) / 8.0;
  
  fill(PAPER);
  stroke(INK);
  strokeWeight(s);
  
  translate(width/2.0, 0);
  line(0, 0, 0, height);
  ellipse(0, 0, 4*s, 4*s);
  
  translate(0, height/3.0);
  
  for (int i=0; i<3; i++) {
    line(-width/2.0, 0, width/2.0, 0);
    translate(0, height/4.0);
  }
  
  resetMatrix();
  translate(width/2.0, height);
  
  ellipse(-width/2.0, 0, width, height/3.0);
  ellipse( width/2.0, 0, width, height/3.0);
  
  save("the-fifth-element.png");
}
```
