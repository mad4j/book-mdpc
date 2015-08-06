
final float F = 512/TWO_PI;

size(512, 512);
  
translate(width/2.0, height/2.0);
scale(F, -F);
  
strokeWeight(1.5/F);
  
beginShape();
for (float a=-PI; a<PI; a+=1.0/F) {
  vertex(a, sin(a));
} 
endShape();
 
save("functions.png");
