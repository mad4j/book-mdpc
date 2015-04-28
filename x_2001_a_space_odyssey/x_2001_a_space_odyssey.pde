void setup()  {
  size(480, 640, P3D);
  noLoop();
}

void draw()  {
  background(129, 183, 114);
  lights();
  
  float fov = PI/3.0;
  float cameraZ = (height/2.0) / tan(fov/2.0); 
  perspective(fov, float(width)/float(height), cameraZ/2.0, cameraZ*2.0); 
  
  translate(width/2, height/2, 0);
  rotateX(-PI/6); 
  rotateY(PI/3);
  
  fill(0);
  stroke(64, 64, 64);
 strokeWeight(2.0); 
  box(80, 320, 160); 
  
  save("2001-a-space-odyssey.png");
}
