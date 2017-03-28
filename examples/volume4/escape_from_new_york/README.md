# Escape from New York (1981)



## Il film in breve
TBV

[dettagli](https://www.imdb.com/title/tt0082340/)

## La locandina
<img src="escape-from-new-york.png"  width="360px" title="Escape from New York">


## Il codice
```processing
// Manuale di Programmazione Cinematografica - Volume 4
// Daniele Olmisani, 2017

// Escape form New York (1981)


final color PAPER = color(30);
final color INK = color(190, 170, 100);


void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  final float F = min(width, height);
  final float U = 0.002;
  
  translate(0.0, 0.75*height);
  scale(F);
  
  background(PAPER);
  
  stroke(INK);
  strokeWeight(5*U);
  
  drawTurtle("fl3fr3fr3flf", 0.05, HALF_PI);
  drawTurtle("l9frffr9flf", 0.05, HALF_PI);
  drawTurtle("l9frffr9flf", 0.05, HALF_PI);
  drawTurtle("l6frflfrrflfr6flf", 0.05, HALF_PI);
  drawTurtle("lfrfl3frfr3flfrflf", 0.05, HALF_PI);
  drawTurtle("l5frfr5flf", 0.05, HALF_PI);
  
  save("escape-from-new-york.png");
}


void drawTurtle(String path, float dL, float dA) {
 
  int k = 1;
  
  for (int i=0; i<path.length(); i++) {
    
    char c = path.charAt(i);
    
    switch (c) {
      case 'f':
        line(0, 0, k*dL, 0);
        translate(k*dL, 0);
        k = 1;
        break;
      case 'r':
        rotate(k*dA);
        k = 1;
        break;
      case 'l':
        rotate(-k*dA);
        k = 1;
        break;
      case '1': case '2': 
      case '3': case '4':
      case '5': case '6':
      case '7': case '8':
      case '9':
        k = c-'0';
        break;
      default:
    }
  }
}
```
