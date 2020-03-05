// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2020

// Singin' the Rain (1952)


final color PAPER = color(15, 35, 70);
final color INK1 = color(225, 225, 0);
final color INK2 = color(115, 55, 25);
final color INK3 = color(140);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  background(PAPER);
    
  translate(0.5*width, 0.5*height);
  scale(S, -S);

  stroke(INK3);
  strokeWeight(U);
  for (int i=1; i<80; i++) {
    float w = -1.0+(2.0/80)*i;
    float a = 0.0;
    float b = random(0.1);
    while (b < 0.8) {
      a = b;
      b += random(0.1);
      line(w, a, w, b);
      b += random(0.1);
    }
  }

  stroke(INK2);
  strokeWeight(8*U);
  line(0.00, 0.41, 0.00, -0.35);

  noStroke();  
  fill(INK1);
  arc(0.00, 0.00, 0.90, 0.80, 0.00, PI);
  
  fill(PAPER);
  for (int i=0; i<4; i++) {
    arc(-0.375+i*0.25, 0, 0.25, 0.12, 0.00, PI);
  }
  
  noFill();
  stroke(INK2);
  strokeWeight(8*U);
  arc(0.040, -0.35, 0.080, 0.080, PI, TWO_PI);
 
  save("singin__in_the_rain.png");
}
