//****************************************************************************************************************************
// Program Name:  Circle_With_Points
// Author:  Tristan Morse
// Date:  8/29/16
// Class:  Intro to Programming with Media Application
// Version:  0.1
// Purpose:  To draw a circle that always contains two dots opposite of each other on the circle's edge and one in the center.
// Comments: 
//****************************************************************************************************************************

//Global Constants
float x1 = 20;                                                  //First Coordinate Set
float y1 = 30;
float x2 = 80;                                                  //Second Coordinate Set
float y2 = 70;

float averagex = ((x1+x2)/2);                                   //Function that calculates the average between the two x points
float averagey = ((y1+y2)/2);                                   //Function that calculates the average between the two y points
float distance = sqrt(((x2-x1)*(x2-x1))+((y2-y1)*(y2-y1)));     //Function that calculates the euclidean distance of the two sets of points

//Two Main Points
strokeWeight(8);
point(x1,y1);
point(x2,y2);

//Midpoint
point(averagex, averagey);

//Circle
noFill();
strokeWeight(1);
ellipse(averagex, averagey, distance, distance);