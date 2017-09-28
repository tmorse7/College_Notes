//************************
// Author:  Tristan Morse
//************************

int numberOfSnowflakes = 600;
int [] flakeX = new int[numberOfSnowflakes];
int [] flakeY = new int[numberOfSnowflakes];
float [] flakeR = new float[numberOfSnowflakes];
float [] flakeG = new float[numberOfSnowflakes];
float [] flakeB = new float[numberOfSnowflakes];


void drawTree() {
  background(0,0,150);
  fill(255);
  rect(0,450,400,600);
  
  //Trunk
  noStroke();
  fill(175,100,50);
  rect(175,550,225,250);
  
  //Leaves
  noStroke();
  fill(0,255,0);
  triangle(50,500,350,500,200,100);
  
  //The Pretty Star on Top
  fill(255,255,0);
  noStroke();
  triangle(175,115,225,115,200,60);
  triangle(175,90,225,90,200,140);
  
  //Pretty Lights
  
  //Yellow Light
  fill(random(75,255),random(75,255),random(75,255));
  ellipse(100,450,10,10);
  
  //White-ish Green Light
  fill(random(75,255),random(75,255),random(75,255));
  ellipse(300,450,10,10);
  
  //Redish Light
  fill(random(75,255),random(75,255),random(75,255));
  ellipse(200,430,10,10);
  
  //Magenta Light
  fill(random(75,255),random(75,255),random(75,255));
  ellipse(275,400,10,10);
  
  //Light Blue Light
  fill(random(75,255),random(75,255),random(75,255));
  ellipse(150,375,10,10);
  
  //Light Green Light
  fill(random(75,255),random(75,255),random(75,255));
  ellipse(225,325,10,10);
  
  //Red Light
  fill(random(75,255),random(75,255),random(75,255));
  ellipse(165,285,10,10);
  
  //Greyish Blue Light
  fill(random(75,255),random(75,255),random(75,255));
  ellipse(215,240,10,10);
  
  //Darker Red Light
  fill(random(75,255),random(75,255),random(75,255));
  ellipse(200,185,10,10);
}

void setup() {
  size(400, 600);
  rectMode(CORNERS);
  smooth();
  
  for(int i = 0; i < flakeX.length; i++) {
    flakeX[i] = (int) random(0, 2*width);
    flakeY[i] = (int) random(-500, 280);
    flakeR[i] = random(150, 255);
    flakeG[i] = random(150, 255);
    flakeB[i] = random(150, 255);
  }
}

void draw() {
  drawTree();
  
  noStroke();
  for(int i = 0; i < flakeX.length; i++) {
    fill(flakeR[i], flakeG[i], flakeB[i]);
    ellipse(flakeX[i], flakeY[i], i/100+6, i/100+6);
    flakeY[i] += i/200 +1 + (int) random(-1, 2);
    flakeX[i] -= i/200 +1;
    if (flakeY[i] > height - random(45)) {
      flakeX[i] = (int) random(0, 2*width);
      flakeY[i] = (int) random(-500, 280);
      flakeR[i] = random(150, 255);
      flakeG[i] = random(150, 255);
      flakeB[i] = random(150, 255);
    }
  }
}