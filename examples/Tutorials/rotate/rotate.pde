

void setup()
{
  size(512, 512);
  noLoop();
}


void draw() {
  
  translate(width/2, height/2);
 
  fill(255);
  stroke(0, 105, 165);
  strokeWeight(25);
  
  rectMode(CENTER);
  
  for (int i=0; i<50; i++) {
    rotate(0.5);
    scale(0.90);
    
    rect(0, 0, 800, 800);
  }
  
  save("rotate.png");
}

