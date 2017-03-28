# Zorro (1975)



## Il film in breve
TBV

[dettagli](https://www.imdb.com/title/tt0072448/)

## La locandina
<img src="zorro.png"  width="360px" title="Zorro">


## Il codice
```processing
// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2016

// Zorro


final color PAPER = color(35);
final color INK = color(240);


void setup() { 
  size(480, 640);
  noLoop();
}


void draw() {
  
  randomSeed(100);
  
  float s = 0.3 * min(width, height);
  float w = 0.03 * s;
  
  translate(width/2.0, height/2.0);
  
  background(PAPER);
  stroke(INK);
  
  handDraw(-s,     -s,  s,     -s, w);
  handDraw( s,     -s, -s,  0.8*s, w);
  handDraw(-s,  0.8*s,  s,  0.8*s, w);
  
  save("zorro.png");
}


void handDraw(float x1, float y1, float x2, float y2, float w) {
  
  strokeWeight(w);
  
  for (int i=0; i<w*4; i++) {
    float d1 = (0.8*w)*randomGaussian();
    float d2 = (0.8*w)*randomGaussian();
    float d3 = (0.8*w)*randomGaussian();
    float d4 = (0.8*w)*randomGaussian();
    line(x1+d1, y1+d2, x2+d3, y2+d4);
  } 
}
```
