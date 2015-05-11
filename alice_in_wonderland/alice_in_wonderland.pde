// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Alice in Wonderland

final color BACKG_COLOR = color(230, 143, 172);
final color SMILE_COLOR = color(242, 243, 244);

final int TEETH = 12;

void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(BACKG_COLOR);
  
  noStroke();
  ellipseMode(CENTER);
  
  fill(SMILE_COLOR);
  ellipse(width/2.0, height/3.0, 300, 300);
  fill(BACKG_COLOR);
  ellipse(width/2.0, height/3.0-50, 325, 300);
  
  stroke(BACKG_COLOR);
  for (int i=0; i<TEETH; i++) {
    line(i*width/TEETH, 0, i*width/TEETH, height); 
  }
  
  save("alice-in-wonderland.png");

}
