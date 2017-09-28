//***************************
//  Tristan Morse
//  Final Exam Coding Portion
//***************************

//Problem 1

//void setup() {
//  rectMode(CENTER);
  
//}

//void draw() {
//  background(0);
//  if(mousePressed && mouseButton == RIGHT) {
//    rect(mouseX, mouseY, 25, 25);
//  }
//  if(mouseY > height/2) {
//    fill(0,0,255);
//  } else {
//    fill(0,255,0);
//  }
//}

//Problem 2

char[] capitalize( char[] x) {
  for(int i = 0; i < x.length; i++) {
    if(97 <= x[i] && x[i] <= 122) {
      x[i] = (char)(i - 32);
    }
  }
  return x;
}

void setup() {
  char array [] = {'a', 'C', 'd', 'X', 'z', 'y', 'B'};
  println(capitalize(array));
}
  


//Problem 3

//class Coordinate{
//  double latitude;
//  double longitude;
  
//  Coordinate(double x, double y) {
//    latitude = x;
//    longitude = y;
//  }
  
//  double getLatitude() {
//    return latitude;
//  }
  
//  double getLongitude() {
//    return longitude;
//  }
  
//  void printCoordinate() {
//    print("Coordianate: " + "("+ getLatitude() + " " + getLongitude() + ")");
//  }
//}

//void setup() {
//  Coordinate coords = new Coordinate(-121.32, 34.22);
//  coords.printCoordinate();
//}