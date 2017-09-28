float circle1x, circle2x, circle3x;
float circle1y, circle2y, circle3y;
float diameter;
int speed = 1;

void setup() {
  size(200, 200);
  smooth();
  noStroke();
  
  diameter = width * .15;
  
  circle1x = diameter;
  circle2x = width/2;
  circle3x = width - diameter;
  
  circle1y = diameter;
  circle2y = height - diameter;
  circle3y = diameter;
}

void draw() {
  background(255);
  
  fill(255,0,0);
  ellipse(circle1x, circle1y, diameter, diameter);
  fill(0,0,255);
  ellipse(circle2x, circle2y, diameter, diameter);
  fill(255,0,0);
  ellipse(circle3x, circle3y, diameter, diameter);
  
 circle1y += speed;
 circle2y -= speed;
 circle3y += speed;
 
  if (circle1y > height - (diameter/2) || circle1y < 0 + (diameter/2)) {
    speed *= -1;
  }
}