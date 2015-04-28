void setup()  {
  size(480, 640, P3D);
  noLoop();
}

void draw()  {
  background(86, 122, 76);
  lights();
  
  float fov = PI/3.0;
  float cameraZ = (height/2.0) / tan(fov/2.0); 
  perspective(fov, float(width)/float(height), cameraZ/2.0, cameraZ*2.0); 
  
  translate(width/2, height/2, 0);
  rotateX(-PI/6); 
  rotateY(PI/3);
  
  fill(0);
  stroke(48, 48, 48);
 strokeWeight(2.0); 
  box(80, 320, 160); 
}
