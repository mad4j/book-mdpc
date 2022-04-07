


float[] p1 = {
  0, 250,
  250, 350,
  350, 210,
  500, 280
};

float[] p2 = {
  0, 300,
  200, 350,
  325, 200,
  500, 310
};


void setup() {
  size(500, 500);
  noLoop();
}

void draw() {
/*
  noFill();
  stroke(2);
  bezier(p1[0], p1[1],
         p1[2], p1[3],
         p1[4], p1[5],
         p1[6], p1[7]);
         
 noFill();
 stroke(2);
  bezier(p2[0], p2[1],
         p2[2], p2[3],
         p2[4], p2[5],
         p2[6], p2[7]);
 */        
 
 /*
 fill(255);
 for (int i=0; i<p1.length; i+=2) {
   ellipse(p1[i], p1[i+1], 10, 10);
 }
 
 fill(0);
 for (int i=0; i<p2.length; i+=2) {
   ellipse(p2[i], p2[i+1], 10, 10);
 }
 */
 
 noStroke();
 fill(255);
 
 beginShape();
   vertex(p1[0], p1[1]);
   bezierVertex(
     p1[2], p1[3],
     p1[4], p1[5],
     p1[6], p1[7]);
     
   vertex(p2[6], p2[7]);
   bezierVertex(
     p2[4], p2[5],
     p2[2], p2[3],
     p2[0], p2[1]);
 
 endShape(CLOSE);
}
