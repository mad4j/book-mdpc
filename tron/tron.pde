

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(34, 34, 34);
  
  strokeWeight(0.5);
  
  stroke(0, 136, 86);
  for (int i=0; i<10; i++) {
    
    line(0, i*height/5, width, i*height/5); 
    line(i*width/5, 0, i*width/5, height); 
  }
  
  strokeWeight(5.0);
 
  stroke(103, 156, 200);
  line(width/2.0, height/3.0, width/2.0, height);
  
  stroke(195, 84, 93);
  line(width/2.0+15, height/3.0+15, width/2.0+15, height);
  
  save("tron.png");
}
