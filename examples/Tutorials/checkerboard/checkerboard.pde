

final int COUNT = 8;

size(512, 512);

scale(width/COUNT, height/COUNT);
  
noStroke();
  
for (int i=0; i<COUNT; i++) {
  for (int j=0; j<COUNT; j++) {
    fill(255*((i+j)%2));
    rect(i, j, 1, 1);
  }
}
  
save("checkerboard.png");