// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Jaws

final color WATER_COLOR = color(0, 103, 165);
final color SHARK_COLOR = color(194, 178, 128);

void setup() {
  
  size(480, 640);
  noLoop();
}

void draw() {
  
  float yOffset = height/10.0;
  float xOffset = width/10.0;
  
  background(WATER_COLOR);
  noStroke();
  
  fill(SHARK_COLOR);
  rect(0, 0, width, yOffset);
  rect(0, height-yOffset, width, yOffset);
  
  for (int i=0; i<10; i++) {
    
    float xA = i*xOffset;
    float yA = yOffset;
    float xB = xA + xOffset;
    float yB = yA;
    float xC = xA + xOffset/2.0;
    float yC = yOffset + xOffset;
  
    triangle(xA, yA, xB, yB, xC, yC);
    triangle(xA, height-yA, xB, height-yB, xC, height-yC);
   
  }
  
  save("jaws.png");
  
}
