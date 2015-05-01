  
  void setup() {
    size(480, 640);
    smooth();
    noLoop();
  }
  

void draw() {
  
  background(0);

  drawGear(100, 100, 50, 8);
  drawGear(200, 200, 50, 8);
  drawGear(100, 300, 50, 8);
}


void drawGear(float x, float y, float r, int n) {

  pushMatrix();
  
  translate(x, y);
  
  fill(127);
  noStroke();
  
  ellipseMode(CENTER);
  
  for (int i=0; i<n; i++) {
    quad(0.95*r, -0.25*r, 1.25*r, -0.20*r, 1.25*r, 0.20*r, 0.95*r, 0.25*r);
    rotate(TWO_PI / n);
  }
  ellipse(0, 0, 2*r, 2*r);
  
  fill(0);
  ellipse(0, 0, r/10, r/10);
  
  popMatrix();
}
  
/*  
  void draw() {
    
    background(0);
    
    float toothHeight = 12.0;
    float radius = 100;
    float radPitch = 5.5;
    float bevel = 0.15;
    
    float gearAngle = PI;
    float posX = width/2.0;
    float posY = height/2.0;
    
    int cntTeeth = int(radius/radPitch);;
    float thickness = PI/cntTeeth;
    
    fill(128);
    pushMatrix();
    translate(posX, posY);
    pushMatrix();
    rotate(gearAngle);
    beginShape();
    
    for (int i=0; i<cntTeeth*2; i++) {
      //we're going to draw each "segment" whether it's a tooth or a gap
      //that's two lines (three vertices)
      
      int l = (i==0 ? cntTeeth*2 - 1 : i - 1); //quick reference to the prior segment
            float inX = cos(i*thickness)*radius; //inner vertex
            float inY = sin(i*thickness)*radius;
            float lastInX = cos(l*thickness)*radius; //prior inner vertex
            float lastInY = sin(l*thickness)*radius;
            if (i%2==0) {
              //gap
              float outX = inX + cos(i*thickness + bevel)*toothHeight; //outer vertex (bevel is ADDED)
              float outY = inY + sin(i*thickness + bevel)*toothHeight;
              vertex(lastInX, lastInY);
              vertex(inX, inY);
              vertex(outX, outY);
            }
            else {
              //tooth
              float outX = inX + cos(i*thickness - bevel)*toothHeight; //outer vertex (bevel is SUBTRACTED)
              float outY = inY + sin(i*thickness - bevel)*toothHeight;
              float lastOutX = lastInX + cos(l*thickness + bevel)*toothHeight; //prior outer vertex
              float lastOutY = lastInY + sin(l*thickness + bevel)*toothHeight;
              vertex(lastOutX, lastOutY);
              vertex(outX, outY);
              vertex(inX, inY);
            }
          }
        endShape(CLOSE);
         
      popMatrix();
      //fluff
      fill(100);
      ellipse(0,0, radius*2-40, radius*2 - 40);
      fill(0);
      ellipse(0, 0, 5, 5);
    popMatrix();
}
*/
