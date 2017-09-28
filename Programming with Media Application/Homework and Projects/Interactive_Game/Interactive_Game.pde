//*********************************************************************
// Program Name:  Interactive_Game
// Author:  Tristan Morse
// Date:  11/6/16
// Class:  Intro to Programming with Media Application
// Version:  0.1
// Purpose:  To create an interactive game with an educational purpose.
// Comments: 
//*********************************************************************


//Gobal Constants

float x1, x2, y1, y2, wBar, ballW, hBar, ballH;                                      //Ball and Bar positions and dimensions
float xBallSpeed = 3, yBallSpeed = random(-2,3);                                     //Ball Speeds
float barSpeed;                                                                      //Bar Speed
boolean up, down, help;                                                              //Up, Down, and help true or false

//******************************************************
//  drawBar function:
//  -  Draws a bar at a certain point with a given color
//  -  barColor = color of the bar
//  -  returns void because no value is needed from it
//******************************************************
void drawBar(int barColor) {
  fill(barColor);
  rect(x2, y2, wBar, hBar);
}

//*******************************************************************
// controlBar function:
// - Dictates what happens to the bar when up is true or down is true
// - Takes no parameters
// - returns void because no value is needed from it
//*******************************************************************
void controlBar() {
  if(up) {
    y2 = y2 - barSpeed;                                                              //If up is true, subtract barSpeed from the bar's y position
  }
  if(down) {
    y2 = y2 + barSpeed;                                                              //If down is true, add barSpeed to the bar's y position
  }
}

//**********************************************************
//  touchyTouch function:
//  - Calculates to see if the bar and the ball are touching
//  - Takes no parameters
//  - returns void because no value is needed from it
//**********************************************************
void touchyTouch() {
  if(x1 + ballW > x2 - wBar && y1 - ballH < y2 + hBar && y1 + ballH > y2) {
    xBallSpeed *= -1;
    yBallSpeed *= 1;
  }
}

//***********************************************************************************************************************
//  sideCirlcles function:
//  -  Places circles with pluses in the four quadrents of the arena
//  -  cR = circle's red value, cG = circle's green value, cB = circle's blue value, and the other three are for the dots
//  -  returns void because no value is needed fom it
//***********************************************************************************************************************
void sideCircles(int cR, int cG, int cB, int dR, int dG, int dB) {
  noFill();
  
  stroke(cR, cG, cB);                                                                   //Top left circle
  ellipse(width/5, height/5, width/6, height/6);                                        
  
  stroke(dR, dG, dB);                                                                   //Top left dot
  point(width/5, height/5);
  
  stroke(cR, cG, cB);                                                                   //Bottom left circle
  ellipse(width/5, height-(height/5), width/6, height/6);                              
  
  stroke(dR, dG, dB);                                                                   //Bottom left dot
  point(width/5, height-(height/5));
  
  stroke(cR, cG, cB);                                                                   //Top right circle
  ellipse(width-(width/5), height/5, width/6, height/6);                                
  
  stroke(dR, dG, dB);                                                                   //Top right dot
  point(width-(width/5), height/5);
  
  stroke(cR, cG, cB);                                                                   //Bottom right circle
  ellipse(width-(width/5), height-(height/5), width/6, height/6);                      
  
  stroke(dR, dG, dB);                                                                   //Bottom right dot
  point(width-(width/5), height-(height/5));
}

//****************************************************
//  theRing function:
//  -  Creates the static background (the arena)
//  -  Takes no parameters
//  -  returns void because no value is needed from it
//****************************************************
void theRing() {
  background(255);
  noFill();
  stroke(0);
  
  ellipse(width/2, height/2, width/3, height/3);                                       //Bigger center ring
  
  line(width/2, 0, width/2, height);                                                   //Dividing Line
  
  ellipse(width/2, height/2, width/2-200, height/2-200);                               //Smaller center ring
  
  rectMode(CORNER);                                                                    //Ring border
  strokeWeight(7);
  rect(0, 0, width, height);
  
  textSize(15);                                                                        //Printed text prompt
  text("Press 'h' for help!", width- 150, height-25);
}

//****************************************************
//  helpScreen function:
//  -  Prints out a help screen when user holds 'h'
//  -  Has no paramters
//  -  returns void because no value is needed from it
//****************************************************
void helpScreen() {
  if(help) {
    fill(0,200);                                                                       //Help screen background
    rect(width/6, height/6, width-(width/3), height-height/3);
    
    fill(255);                                                                         //Title text
    PFont Arial = loadFont("Arial-Black-48.vlw");
    textFont(Arial);
    textSize(30);
    text("Hockey Pong", width/3-("Hockey Pong".length()*2.5), height/3);
    
    textSize(15);                                                                      //Controls
    text("Press 'w' to move the bar up!\n\nPress 's' to move the bar down!\n\nPress 'n' to start a new game!", width/4, height/2);
    
    noLoop();
  }
}

//****************************
//  Setup function:
//  -  Creates starting values
//****************************
void setup() {
  size(500,500);
  smooth();
  
  x1 = width/2;                                                                        //Ball starting values
  y1 = height/2;
  ballW = 20;
  ballH = 20;
  
  rectMode(CENTER);                                                                    //Bar starting values
  x2 = width-20;
  y2 = height/2;
  wBar = -10;
  hBar = 100;
  barSpeed = 5;
}

//***********************
//  draw function:
//  -  Animates the scene
//***********************
void draw() {
  background(204);                                                                    //Refreshing background
  
  theRing();                                                                          //Ring background
  sideCircles(0, 0, 255, 255, 0, 0);
  
  stroke(0);                                                                          //Bar creation and interaction 
  drawBar(0);
  controlBar();
  touchyTouch();
  
  
  fill(0);                                                                            //Draws the ball
  ellipse(x1, y1, ballW, ballH);
  
  if(y1 > height || y1 < 0) {                                                         //Keeps ball in the bounds of the screen on the y axis
    yBallSpeed *= -1;
  }
  y1 += yBallSpeed;
  
  if(x1 > width) {                                                                    //If the ball goes off screen, it prints game over. Else, reverse the x speed of the ball
    fill(250, 150, 0);
    
    PFont Arial = loadFont("Arial-Black-48.vlw");                                     //Print out "game over" text
    textSize(60);
    textFont(Arial);
    text("Game Over", width/5, height/2);
    textSize(30);
    text("Press 'n' to play again!", width/8, height-(height/3));
    noLoop();
  } else if(x1 < 0) {
    xBallSpeed *= -1;
  }
  x1 += xBallSpeed;
    
  if(y2 + hBar/2 > height-50) {                                                      //Keeps bar within the screen's dimensions
    y2 -= barSpeed;
  }
  if(y2 - hBar/2 < -50) {
    y2 += barSpeed;
  }
  
  helpScreen();
}

//***************************************
//  keyPressed function:
//  -  Checks to see if a key was pressed
//***************************************
void keyPressed() {
  if(key == 'w') {
    up = true;
  }
  if(key == 's') {
    down = true;
  }
  if(key == 'n') {
    x1 = width/2;
    y1 = height/2;
    loop();
  }
  if(key == 'h') {
    help = true;
  }
}

//*****************************************************************
//  keyReleased function:
//  -  Checks to see if a key has been released after being pressed
//*****************************************************************
void keyReleased() {
  if(key == 'w') {
    up = false;
  }
  if(key == 's') {
    down = false;
  }
  if(key == 'h') {
    help = false;
    loop();
  }
}