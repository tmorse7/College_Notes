void setup() {
  size(810, 800);
  background(204);
  town();
}

void house(float x, float y, int r, int g, int b) {
  //House body
  fill(r, g, b);
  stroke(0);
  rect(x, y, 50, 30);
  
  //roof
  fill(60, 60, 0);
  triangle(x-5, y, x+55, y, x+25, y-20);
}

//y specifies the top of our street
void street(float y) {
  //road
  fill(75);
  stroke(0);
  rect(0,y,width,30);
  stroke(255,255,0);
  line(0,y+15,width,y+15);
  
  int x;
  for(x = 20; x <= width-70; x+=90) {
    house(x, y-35, 125, 125, 125);
  }
}

void town() {
  int y;
  for(y=100; y < height-40; y+=130) {
    street(y);
  }
}