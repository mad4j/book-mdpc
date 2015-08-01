
size(512, 512);
translate(width/2.0, height/2.0);

background(255);

fill(0);
noStroke();

for (int i = 0; i < 360; i+=2) { 
  pushMatrix();
  rotate(radians(i));
  triangle(0, 0, 400, -3, 400, 3);
  popMatrix();
}

save("moire.png");