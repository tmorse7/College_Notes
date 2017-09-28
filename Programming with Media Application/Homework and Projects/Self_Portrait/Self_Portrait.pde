//*******************************************************
//  Program Name:  Self_Portrait
//  Author:  Tristan Morse
//  Date:  8/29/16
//  Class:  Intro to Programming with Media Application
//  Version:  0.1 
//  Purpose:  To draw a self portrait in a specified window.
//  Comments:
//*******************************************************

//Window and Background (and Smooth)
size(400,400);
background(100,175,255);
smooth();

//Neck and Shoulders
rectMode(CORNERS);
fill(255,216,200);
rect(165,200,235,350);                   //Neck
fill(205,100,255);
bezier(75,400,75,300,325,300,325,400);  //Shoulders

//Hair Background
fill(60,39,1);
noStroke();
ellipse(145,225,150,150);
ellipse(155,150,150,150);
ellipse(200,130,150,150);
ellipse(255,150,150,150);
ellipse(255,225,150,150);

//Head
fill(255,216,200);
stroke(0);
ellipse(200,200,200,200);

//Hair Foreground
fill(60,39,1);
bezier(90,175,155,170,155,150,152,100);  //Left Bangs
bezier(152,110,215,170,250,180,300,175); //Right Bangs
noStroke();
bezier(152,110,200,90,270,90,300,175);  //Right Bangs Filler
stroke(60,39,1);
strokeWeight(2);
line(152,110,300,175);                  //Right Bangs Line Cover
strokeWeight(1);

//Eyes
fill(255);
stroke(0);
arc(155,190,60,70,0,PI);                //Left Eye
line(125,190,185,190);
arc(245,190,60,70,0,PI);                //Right Eye
line(215,190,275,190);
fill(0);
noStroke();
arc(155,190,30,40,0,PI);                //Left Pupil
arc(245,190,30,40,0,PI);                //Right Pupil

//Mouth
fill(255);
stroke(0);
bezier(150,275,200,275,225,225,250,275);//Mouth Outline Curve
stroke(0);
line(225,254,225,275);                  //Teeth Lines
line(200,260,200,275);
line(150,275,250,275);                  //Mouth Outline (bottom)