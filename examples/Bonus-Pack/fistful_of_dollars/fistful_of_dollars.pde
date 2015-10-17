// Manuale di Programmazione Cinematografica
// Daniele Olmisani, 2015

// Fistful of dollars

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  translate(width/2.0, 0);
  
  background(55, 50, 0);
  
  strokeWeight(20);
  stroke(170, 165, 120);
  noFill();
  
  rectMode(CENTER);
  rect(-200,   0, 50, 50);
  rect(-150,  50, 50, 50);
  rect(-100, 100, 50, 50);
  rect( -50, 150, 50, 50);
  
  rect(   0, 200, 50, 50);
  
  rect( 50, 150, 50, 50);
  rect(100, 100, 50, 50);
  rect(150, 50, 50, 50);
  rect(200, 0, 50, 50);
  
  strokeCap(SQUARE);
  
  line(-150, 250, -200, 250);
  line(-200, 240, -200, 290);
  line(-200, 280, -75, 280);
  line(-85, 270, -85, 320);
  line(-75, 310, -125, 310);
  
  line(150, 250, 200, 250);
  line(200, 240, 200, 290);
  line(200, 280, 75, 280);
  line(85, 270, 85, 320);
  line(75, 310, 125, 310);
  
  line(-25, 50, 25, 50);
  line(-60, 25, -10, 25);
  line( 60, 25, 10, 25);
  
  line(-25, 400, 25, 400);
  line(200, 500, 150, 500);
  line(-200, 500, -150, 500);
  line(-25, 600, 25, 600);
  
  save("fistful-of-dollars.png");
}