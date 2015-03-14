

void setup() {
  
  size(480, 640);
  noLoop();
  
  PFont font = loadFont("SymbolMT-48.vlw");
  textFont(font, 48);
}

void draw() {
  
  background(0, 136, 86);
  
  fill(242, 243, 244);
  stroke(34, 34, 34);
  strokeWeight(1.5);
  
  rect(50, 50, 100, 150, 10);
  rect(100, 100, 100, 150, 10);
  rect(150, 150, 100, 150, 10);
  
  fill(34, 34, 34);
  textSize(32);
  
  text("A", 60, 90);
  text("J", 110, 140);
  text("K", 160, 190);
}
