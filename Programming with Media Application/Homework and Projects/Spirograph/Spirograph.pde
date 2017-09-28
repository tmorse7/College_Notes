//Spirograph

float smallerRadius;
float largerRadius;
float innerOffset = 100;    // distance of the pen tip from the center of the inner circle
float outerAngle = 0;
float dOuterAngle = .01;    // step size for the outer angle
float innerAngle = 0;       // angle of rotation about the smaller circle
color penColor = color(255, 0, 0);

void setup() {
  size(500, 500);
  smooth();
  background(255);
  largerRadius = random(width/2.0);
  smallerRadius = random(width*7.0/25.0);
  frameRate(1000);
}

void mouseClicked() {
  background(255);
  smallerRadius = random(largerRadius);
  innerOffset = random(smallerRadius);
  outerAngle = 0;
  innerAngle = 0;
}

void draw() {
  noFill();
  stroke(0);
  ellipse(width/2,height/2,width,height);
  translate(width/2,height/2);    // move origin to the center of larger circle
  rotate(outerAngle);             // perform first rotation
  translate(largerRadius - smallerRadius,0);  // move origin to the center of the smaller circle
  rotate(innerAngle);
  
  fill(penColor);
  stroke(penColor);
  strokeWeight(3);
  point(innerOffset,0);
  
  outerAngle += dOuterAngle;
  innerAngle = -outerAngle*largerRadius/smallerRadius;
}