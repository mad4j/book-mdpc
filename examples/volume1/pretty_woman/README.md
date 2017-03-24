# Pretty Woman (TBV)

TBV

## Il film in breve
TBV

[dettagli](TBV)

## La locandina
<img src="pretty-woman.png"  width="360px" title="Pretty Woman">


## Il codice
```processing
// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2016

// Pretty Woman


final color INK1 = color(240);
final color INK2 = color(55, 100, 165);
final color INK3 = color(250, 225, 205);
final color INK4 = color(135);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  translate(width/2.0, height/2.0);
  
  noStroke();
  
  fill(INK1);
  rect(-width/2.0, -height/2.0, width, height/2.0);
  
  fill(INK2);
  rect(-width/2.0, 0, width, height/2.0);
  
  fill(INK3);
  stroke(0x22FFFFFF & INK4);
  strokeWeight(3.0);
  ellipse(-0.6*width, 0, 1.0*width,  1.25*width);
  ellipse( 0.6*width, 0, 1.0*width,  1.25*width);
  
  stroke(INK4);
  strokeWeight(8.0);
  ellipse(0, 0, 0.3*width,  0.3*width);
  
  save("pretty-woman.png");
}
```
