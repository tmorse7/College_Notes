
int xspeed;
int yspeed;
int ballx;
int bally;
int ovalx;
int ovaly;

void setup() {
  size(400,400);
  smooth();
  ballx = 0;
  bally = 0;
  xspeed = 3;
  yspeed = 3;
  
}

void draw() {
  background(204);
  
  fill(random(0,255),random(0,255),random(0,255));
  ellipse(ballx,bally,random(20,80),random(20,80));
  
  if (bally > height || 0 > bally) {
    yspeed *= -1;
  }
  
  bally += yspeed;
  
  if (ballx > width || 0 > ballx) {
    xspeed *= -1;
  }
  
  ballx += xspeed;
}