//**********************************************************************************************************
// drawCar function:
// - Assembles the car 
// - x = x position, y = y position
// - rP = red value for primary color, gP = green value for primary color, bP = blue value for primary color
// - rT = red value for trim color, gT = green value for trim color, bT = blue value for trim color
// - Returns void because it is printing out an image in the window, not returning a numberic value
//**********************************************************************************************************
void drawCar(float x, float y, float rP, float gP, float bP, float rT, float gT, float bT) {
  rectMode(CENTER);                                                                        //Seting rectMode to CENTER
  
  fill(rP, gP, bP);                                                                        //Main body
  rect(x, y, 100, 100);
  
  fill(rT, gT, bT);                                                                        //Left wheel
  rect(x-50, y+55, 20, 40);
  
  fill(rT, gT, bT);                                                                        //Right wheel
  rect(x+50, y+55, 20, 40);
  
  line(x - 40, y - 50, x - 40, y-20);                                                      //Trunk outlines
  line(x + 40, y - 50, x + 40, y-20);
  line(x - 40, y - 20, x + 40, y - 20);
  
  fill(rT, gT, bT);                                                                        //Trunk handle
  rect(x, y - 25, 15, 5);
  
  fill(rT, gT, bT);                                                                        //Left light
  ellipse(x - 35, y, 20, 20);
  
  fill(rT, gT, bT);                                                                        //Right light
  ellipse(x + 35, y, 20, 20);
  
  fill(rT, gT, bT);                                                                        //Main bumper
  rect(x, y + 25, 90, 10);
  
  fill(rT, gT, bT);                                                                        //Left perpendicular piece to bumper
  rect(x- 25, y + 25, 10, 20);
  
  fill(rT, gT, bT);                                                                        //Right perpendicular piece to bumper
  rect(x + 25, y + 25, 10, 20);
  
}


//****************************************************************************
// drawRoad function:
// - Draws a road for the cars to drive on. This isn't an off-road adventure!
// - Takes no parameters
// - Returns void due to function printing out an image, not a numerical value
//****************************************************************************
void drawRoad() {
  fill(100);                                                                              //Pavement
  rect(20, 0, width-40, height);
  
  stroke(255,255,0);                                                                      //Yellow line
  strokeWeight(4);
  line((width/2)-5, 0, (width/2)-5, height);
  line((width/2)+5, 0, (width/2)+5, height);
  
  stroke(0);                                                                              //Reseting stroke color and weight
  strokeWeight(1);
}

//***********************************************************************************
// setup function:
// - Draws the scene in the window
// - Takes no parameters
// - Returns void due to function printing out several images, not a numberical value
//***********************************************************************************
void setup() {
  size(600,600);                                                                          //Canvas size
  drawRoad();
  
  float [] yCoords = new float[50];
  float [] xCoords = new float[50];
  
  //Coords
  for(int x = 0; x < xCoords.length; x++){
    xCoords[x] = (int) random(0, width);
    yCoords[x] = (int) random(0, height);
    
  }
  
  for(int i = 0; i < xCoords.length; i++) {
    drawCar(xCoords[i], yCoords[i], 100, 150, 200, 200, 150, 100);
  }
}