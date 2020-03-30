// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// The Wall (1982)


final color PAPER = color(255);
final color INK = color(30);


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S =  min(width, height);
  final float U = 0.002;
  
  final float W = S / 6;
  final float H = 0.50*W;
  final float R = 0.10*W;
  
  background(INK);
 
  fill(PAPER); 
  stroke(INK);
  strokeWeight(S*U);
  
  for (int j=0; j<height/H; j++) {
    for (int i=0; i<width/W+1; i++) {
      rect(-(W/2)*(j%2)+i*W, j*H, W, H, R);
    }
  }
  
  save("the-wall.png");
}
