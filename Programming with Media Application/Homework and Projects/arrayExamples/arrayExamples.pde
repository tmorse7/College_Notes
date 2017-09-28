// Susan Reiser and Adam Whitley
// CSCI 182
// Array examples.
// Consider redoing animation example 2, the snowflakes, and
// also redo the "exampleGame" with arrays of fake boxes.

/*
// EXAMPLE 1
// AN array of 12 lines moving at different speeds from
// left to right, with wrap-around. The lines seem to get
// "jumbled" due to floating point rounding errors.
int numLines = 12;
float[] x = new float[numLines]; // x coordinates of the lines
float[] speed = new float[numLines]; // movement speeds of lines
float offset = 8; // space between lines
void setup() {
  size(500, 100);
  smooth();
  strokeWeight(10);
  for (int i = 0; i < numLines; i++) {
    x[i] = i; // Set initial position
    speed[i] = 0.1 + (i / offset); // Set initial speed
  }
}
void draw() {
  background(204);

  // One iteration for each of the 12 lines
  for (int i = 0; i < x.length; i++) {
    x[i] += speed[i]; // Update line position
    if (x[i] > (width + offset)) { // If off the right,
      x[i] = -offset * 2; // return to the left
    }
    float y = i * offset; // Set y-coordinate for line
    line(x[i], y, x[i] + offset, y + offset);
  }
}
*/

/*
// EXAMPLE 2: snowflake program, now with arrays.
// I'll tell you right now: this is the best example this semester.
// Adam Whitley
// Falling snowflakes on a winter scene
int numberOfSnowflakes = 600;
int [] flakeX = new int[numberOfSnowflakes];
int [] flakeY = new int[numberOfSnowflakes];

float [] flakeR = new float[numberOfSnowflakes];
float [] flakeG = new float[numberOfSnowflakes];
float [] flakeB = new float[numberOfSnowflakes];

void setup()
{
  size(400, 400);
  smooth();
  noStroke();
  for (int i = 0; i < flakeX.length; i++) {
    flakeX[i] = (int) random(0, 2*width);
    flakeY[i] = (int) random(-500, 280); // need to REALLY randomize starting height
    flakeR[i] = random(150,255);
    flakeG[i] = random(150,255);
    flakeB[i] = random(150,255);
  }
}

void draw()
{
  // winter scene: a snowy hill with a dumb looking tree
  background(125, 125, 255);
  drawHill();

  noStroke();
  for (int i = 0; i < flakeX.length; i++) {
    fill(flakeR[i], flakeG[i], flakeB[i]);
    ellipse(flakeX[i], flakeY[i], i/100+6, i/100+6);
    flakeY[i] += i/200 + 1 + (int) random(-1, 2);
    flakeX[i]-= i/200 + 1;
    if (flakeY[i] > height - random(45)) {
      flakeX[i] = (int) random(0, 2*width);
      flakeY[i] = (int) random(-400, -20);
      flakeR[i] = random(150,255);
      flakeG[i] = random(150,255);
      flakeB[i] = random(150,255);
    }
  }
}

// Static scene drawn the same way every time.
void drawHill() {
  noStroke(); // this part here is a tree
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
}
*/

/*
// EXAMPLE 3: My example game, with arrays for the fake shapes this time
float sqX, sqY, sqSize;
int numFakes = 4;
float [] fakeX = new float[numFakes];
float [] fakeY = new float[numFakes];
int score;
PFont f;

void setup() {
  size(600, 600);
  smooth();
  sqSize = 300;
  sqX = sqY = 150;
  for (int i = 0; i < fakeX.length; i++) {
    fakeX[i] = fakeY[i] = 150;
  }
  score = 0;
  f = loadFont("Castellar-48.vlw");
}

void draw() {
  background(255);

  // square might move
  if (random(10) < 1) { // 10% chance to move
    sqX = random(width-sqSize);
    sqY = random(height-sqSize);
  }

  // fake squares might move
  for (int i = 0; i < fakeX.length; i++) {
    if (random(10) < 1) { // 10% chance 
      fakeX[i] = random(width-sqSize);
      fakeY[i] = random(height-sqSize);
    }
  }

  // square shrinks one pixel per 3 frames
  if (frameCount%3 == 0)
    sqSize--;

  // draw fake squares
  fill(111, 25, 225);
  for (int i = 0; i < fakeX.length; i++) {
    drawCoolThing(fakeX[i], fakeY[i], sqSize);
  }

  //draw the square
  fill(75, 75, 255);
  drawCoolThing(sqX, sqY, sqSize);

  // display the score top left corner
  textFont(f, 30);
  fill(0, 125);
  text("Score: " + score, 5, 35);
  text("Click the square, obviously!", 5, height-15);

  // game over
  if (sqSize <= 2) {
    gameOverScreen();
  }
}

// cool spot
void drawCoolThing(float x, float y, float size) {
  rect(x, y, size, size);
  ellipse(x+size/2, y+size/2, size, size);
  line(x, y, x+size, y+size);
  line(x, y+size, x+size, y);
}

void gameOverScreen() {
  background(0);
  fill(255, 0, 0);
  textFont(f, 50);
  if (score > 0)
    text("GAME OVER", width/2 - 150, height/2);
  else
    text("FAILURE", width/2 - 150, height/2);
  text("Score: " + score, width/2 - 150, height/2 + 60);
  fill(100, 255, 100);
  textFont(f, 32);
  text("Press any key to restart.", width/2 - 150, height/2 + 102);
  noLoop();
}

// mouse click in the square gives you a point of score
void mousePressed() {
  if (mouseX > sqX && mouseX < sqX+sqSize &&
    mouseY > sqY && mouseY < sqY+sqSize) {
    score++;
    sqSize+=3;
  } 
  else {
    score--;
    sqSize-=6;
  }
}

// restart game
void keyPressed() {
  if (sqSize <= 2) { // game is already over
    sqSize = 300;
    sqX = sqY = 150;
    for (int i = 0; i < fakeX.length; i++) {
      fakeX[i] = fakeY[i] = 150;
    }
    score = 0;
    loop();
  }
}
*/

/*
// EXAMPLE 4: flipping and right shifting arrays
// This example program shows how to flip the elements of an
// array.  That is, the values appear in the opposite order.
// We define a function to do this, then test it extensively
// from setup.
// This program also defines rightShift, to move every element
// in an array to the right one index, and insert a new value
// at index 0.

// This function Reverses the order of the elements in the array.
// The values of a[0] and a[a.length-1] are swapped, and so on.
void arrayFlip(int [] a) {
  int leftIndex = 0, rightIndex = a.length-1, temp;
  
  // iterate leftIndex through the left half of a
  for (; leftIndex < a.length/2; leftIndex++, rightIndex--) {
    // swap values of a[leftIndex] and a[rightIndex]
    temp = a[leftIndex];
    a[leftIndex] = a[rightIndex];
    a[rightIndex] = temp;
  }
}

// Shift all elements in array a to the right 1 index.
// The rightmost element of a is lost.
// newElement is then copied into a[0].
void rightShift(int [] a, int newElement) {
  // shift over existing elements to make room
  for (int i = a.length - 1; i > 0; i--) { // large index to small
    a[i] = a[i-1];
  }

  // then put new element in index 0
  a[0] = newElement;
}

// Testing arrayFlip and rightShift a few times.
void setup() {
  int [] array1 = {3, 5, 7, 9, 11};
  int [] array2 = {6, 8, 10, 12, 14, 16};
  int [] array3 = {4, 5};
  int [] array4 = {1}; // You can have a pointless length 1 array.
  int [] array5 = {4, 6, 8, 10, 12};

  // test out arrayFlip on arrays 1 through 4
  println("array 1 values:");
  println(array1);
  arrayFlip(array1);
  println("array 1 was flipped.\narray 1 values:");
  println(array1);

  println("array 2 values:");
  println(array2);
  arrayFlip(array2);
  println("array 2 was flipped.\narray 2 values:");
  println(array2);

  println("array 3 values:");
  println(array3);
  arrayFlip(array3);
  println("array 3 was flipped.\narray 3 values:");
  println(array3);

  println("array 4 values:");
  println(array4);
  arrayFlip(array4);
  println("array 4 was flipped.\narray 4 values:");
  println(array4);
  
  // test rightShift on array5
  println("Original contents of array5:");
  println(array5);
  
  // right shift r and put value 93 into index 0
  // The 12 value in index 4 "fall offs" the end
  // and is lost.
  rightShift(array5, 93);
  println("array5 after right shift inserting 93:");
  println(array5);
}
*/

/*
// EXAMPLE 5: Billowing smoke -- Adam's favorite animation!
// We draw ellipses at the last 100 places the mouse has been.
int num = 100;
int[] x = new int[num]; // x coordinates
int[] y = new int[num]; // y coordinates
void setup() {
  size(500, 500);
  noStroke();
  smooth();
  fill(255, 102);
}

void draw() {
  background(0);
  // Shift the mouse location values to the right, to make room.
  // Add the new mouse location to the beginning of the array,
  // in the leftmost location.
  rightShift(x, mouseX);
  rightShift(y, mouseY);

  // Draw the circles
  for (int i = num-1; i > 0; i--) {
    fill(200 - 2*i);// "older" puffs of smoke are darker
    ellipse(x[i], y[i], i, i); // Also, try diameter i*i/40
  }
}

// Shift all elements in array a to the right 1 index.
// The rightmost element of a is lost.
// newElement is then copied into a[0].
void rightShift(int [] a, int newElement) {
  // shift over existing elements to make room
  for (int i = a.length - 1; i > 0; i--) { // large index to small
    a[i] = a[i-1];
  }

  // then put new element in index 0
  a[0] = newElement;
}
*/
