// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2020

// Blade Runner (1982)


final color PAPER = color(30);
final color INK = color(240);

final float dL = 0.1;
final float dA = 0.05*PI;

final String P = "5lf3l4f4r2f2l4f19r4f7l3f4r2f14r3f13l2fl2f";


void setup() {
  size(480, 640);
  noLoop();
}


void draw() {
  
  final float S = min(width, height);
  final float U = 0.002;
  
  translate(0.2*width, 0.75*height);
  scale(S);
  
  background(PAPER);
  
  stroke(INK);
  strokeWeight(10*U);
  
  drawTurtle(P, dL, dA);
  
  save("blade-runner.png");
}


void drawTurtle(String path, float dL, float dA) {
  
  int k = 0;
  
  for (int i=0; i<path.length(); i++) {
    
    char c = path.charAt(i);
    
    switch (c) {
      case 'f':
        if (k==0) k=1;
        line(0, 0, k*dL, 0);
        translate(k*dL, 0);
        k=0;
        break;
      case 'r':
        if (k==0) k=1;
        rotate(k*dA);
        k=0;
        break;
      case 'l':
        if (k==0) k=1;
        rotate(-k*dA);
        k=0;
        break;
      case '1': case '2': 
      case '3': case '4':
      case '5': case '6':
      case '7': case '8':
      case '9': case '0':
        k = 10*k + c-'0'; 
        break;
      default:
        break;
    }
  }
}
