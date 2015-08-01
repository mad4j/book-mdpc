size(512, 512);
  
translate(width/2.0, height/2.0);

fill(255);
strokeWeight(25);
  
rectMode(CENTER);
 
for (int i=0; i<50; i++) {
  rotate(0.5);
  scale(0.90);
    
  rect(0, 0, 800, 800);
}
  
save("rotate.png");