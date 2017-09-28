// CSCI 182
// Example programs about Classes and Objects

/*
// EXAMPLE 1: goin' old school
// Here's an implementation of the idea of a spot -- a place in
// the display window, like a splashed drop of ink.
// It's implemented as an ellipse.
// We're not using objects or classes -- doin' this old school.
int x = 43, y = 50; // location of the spot
int diameter = 50; // size of the spot

void setup() {
  smooth();
  noStroke();
}

void draw() {
  background(0);
  ellipse(x, y, diameter, diameter);
}
*/

/*
// EXAMPLE 2
// A rewriting of example 1 using a very simple definition
// of the Spot class.  It only contains a few data fields.
// To access a data field in an object, we use the . operator
Spot sp;             // Declare a Spot handle
void setup() {
  smooth();
  noStroke();
  sp = new Spot();   // Construct Spot object & attach to handle
  sp.x = 43;         // Assign 43 to the x field
  sp.y = 50;         // Assign 50 to the y field
  sp.diameter = 50;  // Assign 50 to the diameter field
}

void draw() {
  background(0);
  ellipse(sp.x, sp.y, sp.diameter, sp.diameter);
}

class Spot {         // Class definition of Spot
  float x, y;        // data fields: coordinates of the Spot
  float diameter;    // size of the Spot
}
*/

/*
// EXAMPLE 3
// We define the Spot class differently, this time with a
// class method called display, invoked when we want to make
// the Spot appear in the display window.
Spot sp;             // Declare the object
void setup() {
  smooth();
  noStroke();
  sp = new Spot();   // Construct the object
  sp.x = 43;
  sp.y = 50;
  sp.diameter = 50;
}
void draw() {
  background(0);
  sp.display();      // calling the display() class method
                     // to make the Spot appear.
}
class Spot {
  float x, y, diameter;

  // This method makes the Spot appear on screen using the
  // coordinates and size stored in the data fields.
  void display() {
    ellipse(x, y, diameter, diameter);
  }
}
*/

/*
// EXAMPLE 4: OO Design
// Now, we've defined the Spot class in a truly
// Object Oriented way, including a constructor method.
// Now, we can construct new spots and display them entirely
// through the class methods.  Thus, when we use the Spot,
// we are treating it as a black box, following the principle of
// encapsulation.
Spot sp;                          // Declare the object
void setup() {
  smooth();
  noStroke();
  sp = new Spot(43, 50, 50);      // Construct the object
}
void draw() {
  background(0);
  sp.display();
}

class Spot {       		    // Class definition
  float x, y, diameter;

  // This constructor creates a new Spot object.
  // The coordinates and size given as arguments to
  // the parameters are used to initialize the data fields.
  Spot(float xpos, float ypos, float dia) {
    x = xpos;
    y = ypos;
    diameter = dia;
  }

  // This method makes the Spot appear on screen using the
  // coordinates and size stored in the data fields.
  void display() {
    ellipse(x, y, diameter, diameter);
  }
}
*/

/*
// EXAMPLE 5: moving Spots!
// This time, we define the Spot class with a new move method.
// This allows us to move a Spot's location.
// We declare a few spot objects, then have them move
// back and forth in a simple animation.
Spot sp1, sp2, sp3;                // Declare the handles
void setup() {

  smooth();
  noStroke();
  sp1 = new Spot(20, 50, 35, 0.5);      // Construct sp1
  sp2 = new Spot(50, 50, 10, 2.5);      // Construct sp2
  sp3 = new Spot(80, 50, 25, 1.5);      // Construct sp3
}

void draw() {
  // This is a technique to make a "ghosting" effect.
  // You can't use alpha with background, but...
  // You can put an almost transparent rectangle filling
  // the screen every frame.  It layers to fade things out.
  fill(0, 10);
  rect(0, 0, width, height);

  // Now, move and display our Spot objects.
  fill(255);
  sp1.move();
  sp2.move();
  sp3.move();
  sp1.display();
  sp2.display();
  sp3.display();
}

class Spot {
  float x, y, diameter;
  float speed;        	// distance moved each frame
  int direction;  	// direction of motion (1 is down, -1 is up)

  // This constructor allows the invoker to create a Spot
  // of a given location, size, and vertical speed of motion.
  Spot(float xpos, float ypos, float dia, float sp) {   
    x = xpos;
    y = ypos;
    diameter = dia;
    speed = sp;
    direction = 1;
  }

  // Move the spot a number of pixels vertically given by the
  // speed.  If the edge of the spot touches the top or bottom
  // of the screen, it reverses direction, "bouncing off".
  void move() {
    y += (speed * direction);
    if ((y > (height - diameter / 2)) || (y < diameter / 2)) {
      direction *= -1;
    }
  }

  // Display the Spot on screen at the given location and size.
  void display() {
    ellipse(x, y, diameter, diameter);
  }
}
*/

/*
// EXAMPLE 6: an array of Spot objects!
int numSpots = 105;
Spot [] spArray = new Spot[numSpots];  // An array of Spot handles
void setup() {
  size(500, 500);
  smooth();
  noStroke();
  for (int i = 0; i< numSpots; i++) { // Construct an object for each hamdle in the array.
    spArray[i] = new Spot(width/2, height/2, random(3, 50), random(-5, 5), random(-5, 5));
  } // Notice the random sizes and speeds for each Spot object.
}
void draw() {
  background(0);
  for (int i = 0; i<numSpots; i++) { // move and display each Spot object, every frame.
    spArray[i].move();
    spArray[i].display();
  }
}

// Spot class definition, including motion in the x dimension and y dimension.
class Spot {
  float x, y, diameter;
  float speedx;        	// Distance moved each frame in x
  float speedy;        	// Distance moved each frame in x
  int directionx;  	// Motion Direction(1 is right, -1 is left)
  int directiony;  	// Motion Direction(1 is down, -1 is up)

  // This spot constructor has parameters for the location, size,
  // and speed of motion in both dimensions.
  Spot(float xpos, float ypos, float dia, float spx, float spy) {   
    x = xpos;
    y = ypos;
    diameter = dia;
    speedx = spx;
    speedy = spy;
    directionx = directiony = 1;
  }

  // This method moves the Spot the specified amount of pixels in the
  // y dimension, bounding off the top and bottom of the screen.  It also
  // moves in the x dimensiion, similarly.
  void move() {
    y += (speedy * directiony);
    if ((y > (height - diameter / 2)) || (y < diameter / 2)) {
      directiony *= -1;
    }
    x += (speedx * directionx);
    if ((x > (width - diameter / 2)) || (x < diameter / 2)) {
      directionx *= -1;
    }
  }

  // Display the Spot at the specified place, and size.
  void display() {
    ellipse(x, y, diameter, diameter);
  }
}
*/

/*
// EXAMPLE 7: Kapow!
// An extension of example 6 with some interactive features.
// This example contains almost everything we've learned in 182!
// Each spot has its own color, r g b and alpha.
// Left click to create an explosion of random colored Spots on
// the mouse. Right click to reverse their directions.

int numSpots = 50;
int startX, startY;
Spot [ ] spArray = new Spot[numSpots];
void setup() {
  size(700, 700);
  smooth();
  noStroke();
  startX = mouseX;
  startY = mouseY;
  for (int i = 0; i< numSpots; i++) {
    spArray[i] = new Spot(int(random(255)), int(random(255)), 
    int(random(255)), int(random(100, 255)), 
    startX, startY, random(3, 50), 
    random(-5, 5), random(-5, 5));
  }
}

void draw() {
  fill(0, 5);
  rect(0, 0, width, height);
  fill(255);

  for (int i = 0; i<numSpots; i++) {
    spArray[i].move();
    spArray[i].display();
  }
}

void mousePressed()
{
  if (mouseButton == LEFT)
  { 
    // explode. Reconstruct all the Spot objects.
    startX = mouseX;
    startY = mouseY;
    for (int i = 0; i< numSpots; i++) {
      spArray[i] = new Spot(int(random(255)), int(random(255)),
                   int(random(255)), int(random(100, 255)),
                   startX, startY, random(3, 50),
                   random(-5, 5), random(-5, 5));
    }
  }
  else if (mouseButton == RIGHT)
  { // reverse all the Spots' directions
    for (int i = 0; i<numSpots; i++) {
      spArray[i].switchDirection();
    }
  }
}

class Spot {
  float x, y, diameter;
  float speedx; 	 // Distance moved each frame in x
  float speedy; 	 // Distance moved each frame in x
  int directionx; 	 // Motion Direction(1 is right, -1 is left)
  int directiony; 	 // Motion Direction(1 is down, -1 is up)
  int r, g, b, a;
  
  Spot(int red, int green, int blue, int alpha,
       float xpos, float ypos, float dia, float spx, float spy) {
    r = red;
    g = green;
    b = blue;
    a = alpha;
    x = xpos;
    y = ypos;
    diameter = dia;
    speedx = spx;
    speedy = spy;
    directionx = directiony = 1;
  }
  
  void switchDirection()
  {
    directiony *= -1;
    directionx *= -1;
  }

  void move() { // I took out the "bounce off screen edge" stuff
    y += (speedy * directiony);
    //if ((y > (height - diameter / 2)) || (y < diameter / 2)) {
    //  directiony *= -1;
    //}
    x += (speedx * directionx);
    //if ((x > (width - diameter / 2)) || (x < diameter / 2)) {
    //  directionx *= -1;
    //}
  }

  void display() {
    fill(r, g, b, a);
    ellipse(x, y, diameter, diameter);
  }
}
*/