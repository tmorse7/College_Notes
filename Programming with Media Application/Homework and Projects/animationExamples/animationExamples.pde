// Susan Reiser and Adam Whitley
// Animation example programs

/*
// EXAMPLE 1
// The line "bounces" off the bottom of the screen by
// reversing its direction (making the speed negative).
// If the vertical speed is positive, the line moves DOWN.
// If the vertical speed is negative, the line moves UP. 
float y = 0, speed = 1; //the amount y moves per frame
void setup() {
  size(255, 255);
  smooth();
  stroke(75, 255, 75);
}
void draw() {
  background(204); // Also try: background(y);
  line(0, y, width, y);
  if (y > height) { // Also try: if(y > height || y < 0)
    speed *= -1; // Reverse direction when hitting the edge.
  }
  y += speed;
}
*/

/*
// EXAMPLE 2
// Adam Whitley
// Falling snowflakes on a winter scene
int flakex1, flakex2, flakex3;
int flakey1, flakey2, flakey3;
void setup()
{
   size(400, 400);
   smooth();
   noStroke();
   flakey1 = 20;
   flakey2 = 123;
   flakey3 = 218;
   flakex1 = (int) random(8, width-8);
   flakex2 = (int) random(8, width-8);
   flakex3 = (int) random(8, width-8);
}

void draw()
{
   // winter scene: a snowy hill with a dumb looking tree
   background(125, 125, 255);

   noStroke(); // this part here is a
   fill(50, 50, 0);
   rect(75, height-80, 20, 20);
   fill(75, 150, 75);
   triangle(60, height-80, 110, height-80, 85, height-120);
   triangle(60, height-100, 110, height-100, 85, height-140);
   
   fill(175, 175, 255); // this part is a snowy hill
   rect(0, height-50, width, 50);
   strokeWeight(2);
   stroke(75, 75, 255);
   bezier(0, height-50, 150, height-110, width-50, height-50, width, height-50);
   
   // Snowflake ellipses. I'm no artist, so sue me!
   fill(255);
   noStroke();
   ellipse(flakex1, flakey1, 8, 8);
   ellipse(flakex2, flakey2, 8, 8);
   ellipse(flakex3, flakey3, 8, 8);
   
   // snowflake movement
   flakey1 += 3;
   flakey2 += 3;
   flakey3 += 3;
   
   // if they hit the "ground", teleport them above the sky
   // so they can fall down again
   if(flakey1 > height - 35) {
     flakex1 = (int) random(8, width-8);
     flakey1 = (int) random(-400, -20);
   }
   if(flakey2 > height - 35) {
     flakex2 = (int) random(8, width-8);
     flakey2 = (int) random(-400, -20);
   }
   if(flakey3 > height - 35) {
     flakex3 = (int) random(8, width-8);
     flakey3 = (int) random(-400, -20);
   }
}
*/


/*
// EXAMPLE 3
// Adam Whitley, Thu Feb 7 2013
// Balls bouncing around, with gravity!
// Their colors get lighter at the top of each bounce

float x1 = 50, x2 = 150, y1 = 127, y2 = 108;
float xspeed1 = 2.76, xspeed2 = 1.39, yspeed1 = 1, yspeed2 = 1;
void setup() {
  size(200, 200);
  smooth();
  stroke(125);
  strokeWeight(2);
}
void draw() {
  background(204);
  
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
*/

/*
// EXAMPLE 4
// A timed stoplight.
// The timings are done with the built-in variable frameCount,
// and use of the % mod operator.
void setup() {
  size (300, 300);  
  smooth();
}
void draw() {
  background(125, 125, 255);

  fill(0);
  rect(100, 30, 100, 240);

  // The "stop" red signal.
  if (frameCount%600 < 300) {
    fill(255, 0, 0);
  } 
  else {
    fill(125);
  }
  ellipse(width/2, height/2-75, 70, 70);

  // The "slow down" yellow signal.
  if (frameCount%600 >= 500) {
    fill(255, 255, 0);
  } 
  else {
    fill(125);
  }
  ellipse(width/2, height/2, 70, 70);

  // The "go" green signal.
  if (frameCount%600 >= 300 && frameCount%600 < 500) {
    fill(0, 255, 0);
  } 
  else {
    fill(125);
  }
  ellipse(width/2, height/2+75, 70, 70);
}
*/

/*
// EXAMPLE 5
// The same timed stoplight.
// The timings are done with a custom variable named counter
int counter;
void setup() {
  size (300, 300);  
  smooth();
  counter = 0;
}
void draw() {
  background(125, 125, 255);

  fill(0);
  rect(100, 30, 100, 240);

  // The "stop" red signal
  if (counter < 300) {
    fill(255, 0, 0);
  } 
  else {
    fill(125);
  }
  ellipse(width/2, height/2-75, 70, 70);

  // The "slow down" yellow signal
  if (counter >= 500) {
    fill(255, 255, 0);
  } 
  else {
    fill(125);
  }
  ellipse(width/2, height/2, 70, 70);

  // The "go" green signal
  if (counter >= 300 && counter < 500) {
    fill(0, 255, 0);
  } 
  else {
    fill(125);
  }
  ellipse(width/2, height/2+75, 70, 70);
  
  counter++;
  if(counter == 600) {
    counter = 0;
  }
}
*/
