# The Shining (1980)

Drammatico, Horror

## Il film in breve
A family heads to an isolated hotel for the winter where an evil and spiritual presence influences the father into violence, while his psychic son sees horrific forebodings from the past and of the future.

[dettagli](https://www.imdb.com/title/tt0081505/)

## La locandina
<img src="shining.png"  width="360px" title="The Shining">


## Il codice
```processing
// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2017

// Shining (1980)
// Drama, Horror
// http://www.imdb.com/title/tt0081505/


final color PAPER = color(240, 90, 40);
final color INK = color(0);

final String P = "fflfflfrfrfrfrfrflffl ffrffrflflflflflfrffr";


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S = min(width, height);
  final float U = 0.002;
  
  float dL = 0.05;
  float dA = PI/3.0;
  
  scale(S);
  translate(-dL, -dL);
  
  background(PAPER);
  
  stroke(INK);
  strokeWeight(10*U);
  
  for (int k=0; k<7; k++) {
    pushMatrix();
    rotate(-PI/6.0);
    for (int i=0; i<7; i++) {
      drawTurtle(P, dL, dA);
    }
    popMatrix();
    translate(0.0, 5*dL);
  }
  
  save("shining.png");
}


void drawTurtle(String path, float dL, float dA) {
  
  for (int i=0; i<path.length(); i++) {
    
    char c = path.charAt(i);
    
    switch (c) {
      case 'f':
        line(0, 0, dL, 0);
        translate(dL, 0);
        break;
      case 'r':
        rotate(dA);
        break;
      case 'l':
        rotate(-dA);
        break;
      default:
    }
  }
}
```
