float x1 = 50, x2 = 150, y1 = 127, y2 = 108;
float xspeed1 = 2.76, xspeed2 = 1.39, yspeed1 = 1, yspeed2 = 1;

float distance(float x1, float y1, float x2, float y2) {
  return sqrt(sq(x1-x2)+sq(y1-y2));
}

boolean touching(float x1, float y1, float d1, float x2, float y2, float d2) {
  if (distance(x1, y1, x2, y2) < (d1+d2)/2) {
    return true;
  } else {
    return false;
  }
}

void setup() {
  size(200, 200);
  smooth();
  stroke(125);
  strokeWeight(2);
}
void draw() {
  background(204);
  
  if (touching(x1, y1, 20, x2, y2, 20)) {
    xspeed1 *= -1;
    yspeed1 *= -1;
    xspeed2 *= -1;
    yspeed2 *= -1;
  }
  
  // red bouncing ball
  fill(255, 255 - y1, 255 - y1);
  ellipse(x1, y1, 20, 20);
  
  // red vertical movement
  if (y1 > height || y1 < 0) {
    yspeed1 *= -1;
  } 
  else {
    yspeed1 += 0.2; // this is the acceleration of gravity
  }
  y1 += yspeed1;
  
  // red horizontal movement
  if (x1 > width || x1 < 0) {
    xspeed1 *= -1;
  }
  x1 += xspeed1;
  
  // orange bouncing ball
  fill(255, 255 - .7*y2, 255 - 1.2*y2);
  ellipse(x2, y2, 20, 20);
  
  // orange vertical movement
  if (y2 > height || y2 < 0) {
    yspeed2 *= -1;
  } 
  else {
    yspeed2 += 0.2; // this is the acceleration of gravity
  }
  y2 += yspeed2;
  
  // orange horizontal movement
  if (x2 > width || x2 < 0) {
    xspeed2 *= -1;
  }
  x2 += xspeed2;
}