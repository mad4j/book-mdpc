int spiralSizeMax=400, spiralSizeMin=60;

float angleStart=0, angleEnd=2*PI;
float arStart=1.3, arEnd=1.8;
float s2=spiralSizeMax/2.0;
float s,a,ar;

int ss=480;
float ss2=ss/2.0;

void setup() {
  size(480, 640);
  noLoop();
}

void draw() {
  
  background(190, 0, 50);
  
  noFill();
  stroke(242, 243, 244);
  strokeWeight(1.0);
  
  for (int i=0; i<1000; i++) {
    s=(spiralSizeMax-spiralSizeMin)/(.015*i+1)+spiralSizeMin;
    //a=-(angleStart-angleEnd)/(.03*i+1)+angleEnd;
    a=-TWO_PI/(.03*i+1)+angleEnd;
    ar=(arStart-arEnd)/(.03*i+1)+arEnd;
    pushMatrix();
      translate(ss2, ss2); 
      rotate(a);
      ellipse(0, 0, s, s/ar);
    popMatrix();
  }
}

