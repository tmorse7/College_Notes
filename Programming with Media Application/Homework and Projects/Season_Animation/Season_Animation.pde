//***************************************************************************************************************
// Program Name:  Season_Animation
// Author:  Tristan Morse
// Date:  10/11/16
// Class:  Intro to Programming with Media Application
// Version:  0.1
// Purpose:  An animation of a day and night cycle depicted in the fall season.
// Comments: 
//***************************************************************************************************************

//Defining the Sun
void sun(float sX, float sY) {
  noStroke();
  fill(255,255,0);
  ellipse(sX, sY, 70,70);
}

//Defining the Moon
void moon(float mX, float mY) {
  noStroke();
  fill(245);
  ellipse(mX, mY, 70, 70);
}

//Defining the Tree
void tree(float tX, float tY) {
  fill(100,100,50);                                                      //Trunk
  rect(tX, tY, 20, 40);  
  
  fill(255,100,0);                                                       //Leaves
  ellipse(tX+10, tY-15, 50 , 50);                                        
}

//Defining the Window for the House
void window(float wX, float wY) {
  fill(255, 255, 0);                                                    //Lighting
  rect(wX, wY, 20, 20);
  
  fill(0);                                                              //Window cross-sections
  line(wX+10, wY, wX+10, wY+20);
  line(wX, wY+10, wX+20, wY+10);
}

//Defining the House
void house(float posnX, float posnY) {
  fill(150);                                                           //Body of House
  stroke(0);
  rect(posnX, posnY, 50, 50);                                          
  
  fill(100, 100, 200);                                                 //Roof of house
  triangle(posnX-5, posnY, posnX+55, posnY, posnX+25, posnY-20);       
  
  window(posnX+15, posnY+12);                                          //Puttin' on the Window
}

//Defining the static landscape
void landscape() {
  noStroke();                                                          //Rectangle to fill in the landscape
  fill(150, 100, 50); 
  rect(0, height-150, width, 150);
  
  strokeWeight(2);                                                     //Bezier curve to make the planet round! (It isn't flat, right?)
  stroke(0);
  bezier(0, height-150, 150, height-200, width-150, height-200, width, height-150);
}

//Setting Global Constants
int counter;
int starCounter;
int cloudx1, cloudx2, cloudx3, cloudx4, cloudx5;
int cloudy1, cloudy2, cloudy3, cloudy4, cloudy5;

//Setup Function to assign static values for Draw
void setup() {
  size(500,500);
  smooth();
  counter = 0;
  
  //Assigning starting coordinate values to the clouds
  cloudx1 = -20;
  cloudx2 = -123;
  cloudx3 = -218;
  cloudx4 = -329;
  cloudx5 = -399;
  
  cloudy1 = (int) random(20, 200);
  cloudy2 = (int) random(20, 200);
  cloudy3 = (int) random(20, 200);
  cloudy4 = (int) random(20, 200);
  cloudy5 = (int) random(20, 200);

}

//Draw Function to draw on the static scene and animate the moving components
void draw() {
  
  //The lovely morning, noon, evening, and night transition
  if (counter < 300) {
    background(224,122,85);                                        //Morning
    sun(50, height/2);
    moon(width-50, height/2);
  } else if (counter > 300 && counter < 600){
    background(20, 100, 200);                                      //Noon
    sun(width/2, 50);
  } else if (counter > 600 && counter < 900) {
    background(224,122,85);                                        //Twilight
    sun(width - 50, height/2);
    moon(50, height/2);
  } else {
    background(0);                                                 //Night
    moon(width/2, 50);
  }
  
  //Counter reset 'if' statement
  counter++;
  if (counter == 1200) {
    counter = 0;
  }
  
  //Static landscape with houses and happy, little trees
  landscape();
  house(300,300);
  house(100, 350);
  tree(200, 300);
  tree(400, 400);
  tree(215, 425);
  tree(50, 390);
  
  //Physical Clouds
  noStroke();
  fill(204);
  ellipse(cloudx1, cloudy1, 60, 20);                              //Cloud 1
  ellipse(cloudx2, cloudy2, 60, 20);                              //Cloud 2
  ellipse(cloudx3, cloudy3, 60, 20);                              //Cloud 3
  ellipse(cloudx4, cloudy4, 60, 20);                              //Cloud 4
  ellipse(cloudx5, cloudy5, 60, 20);                              //Cloud 5
  
  //Cloud speeds
  cloudx1 += 1;
  cloudx2 += 1;
  cloudx3 += 1;
  cloudx4 += 1;
  cloudx5 += 1;
  
  //Cloud 'loop-around' statements
  
  //Cloud 1
  if(cloudx1 > width + 20) {
    cloudx1 = (int) random(-200, 0);
    cloudy1 = (int) random(20, 200);
  }
  
  //Cloud 2
  if(cloudx2 > width + 20) {
    cloudx2 = (int) random(-200, -20);
    cloudy2 = (int) random(20, 200);
  }
  
  //Cloud 3
  if(cloudx3 > width + 20) {
    cloudx3 = (int) random(-200, -40);
    cloudy3 = (int) random(20, 200);
  }
  
  //Cloud 4
  if(cloudx4 > width + 20) {
    cloudx4 = (int) random(-200, -60);
    cloudy4 = (int) random(20, 200);
  }
  
  //Cloud 5... but where's cloud 9?
  if(cloudx5 > width + 20) {
    cloudx5 = (int) random(-200, -80);
    cloudy5 = (int) random(20, 200);
  }
}

void keyPressed() {
  if(key == 'p') {
    noLoop();
  } else if(key == 'r') {
    loop();
  }
}