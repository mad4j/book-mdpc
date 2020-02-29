

final int W = 16;
final int H = 20;

int v[] = new int[W*H];

long seed = 0;

while (seed < 0x7FFFFFFF) {

  randomSeed(seed);
  
  boolean found = true;
  for (int i=0; i<v.length; i++) {
    
    v[i] = (int)random(2);
    
    if (i > W) {
      
      if ((v[i-(W+1)] == 0) && (v[i-W] == 1) && (v[i-1] == 1) && (v[i] ==  0)) {
        found = false;
        break;
      }   
    }
  }
  if (found) {
    println("\n\n" + seed + ": " + found);
  } else {
    //print(".");
  }
  
  seed++;
}

println("\n\nDONE");
