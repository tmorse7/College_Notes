boolean inTopHalf(float y) {
  if(y < height/2) {
    return true;
  } else {
    return false;
  }
}

void setup() {
  size(400, 400);
  for(int i=0; i < 20; i++) {
    float y = random(0, height);
    
    if(inTopHalf(y)) {
      fill(0, 255, 0);
    } else {
      fill(255, 0, 0);
    }
    ellipse(random(0, width), y, 5, 5);
  }
}