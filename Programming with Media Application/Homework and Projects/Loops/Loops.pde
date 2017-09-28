//***************************************************************************************************************
// Program Name:  Loops
// Author:  Tristan Morse
// Date:  9/25/16
// Class:  Intro to Programming with Media Application
// Version:  0.1
// Purpose:  To create a grid that is 5 x 5 with at least 4 primative graphics with aspects that are randomized.
// Comments: 
//***************************************************************************************************************

size(400,400);

//Int Declarations
int x;
int y;

//Face Loop
for(y = 0; y <5; y++) {
  for(x = 0; x <5; x++) {
    fill(random(150,255),random(150,255),random(150,255));                                                //Base of Face
    ellipse(30+85*x, 30+85*y, random(40,60), random(40,60));
    
    fill(random(75,200),random(75,200),random(75,200));
    triangle(15+85*x, 30+85*y, 25+85*x, 30+85*y, 20+85*x, 20+85*y);                                      //Left Eye
    
    fill(random(75,200),random(75,200),random(75,200));
    triangle(35+85*x, 30+85*y, 45+85*x, 30+85*y, 40+85*x, 20+85*y);                                      //Right Eye
    
    noFill();
    bezier(15+85*x,40+85*y, 25+85*x, random(25,60)+85*y, 35+85*x, random(25,60)+85*y, 45+85*x, 40+85*y); //Mouth
  }
}