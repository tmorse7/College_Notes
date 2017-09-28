//*****
//Lab 1
//*****

//class Frisbee {
//  float x, y, fHeight, fWidth;
//  float r, g, b;
  
//  void display(){
//    fill(r,g,b);
//    ellipse(x,y,fWidth,fHeight);
//    ellipse(x,y,fWidth/3, fHeight/3);
//  }
//}

//Frisbee fr;
//void setup() {
//  size(500,500);
//  smooth();
//  fr = new Frisbee();
//  fr.x = width/2;
//  fr.y = height/2;
//  fr.fWidth = 100;
//  fr.fHeight = 30;
//  fr.r = 255;
//  fr.g = 0;
//  fr.b = 0;
//}

//void draw() {
//  background(255);
//  fr.display();
//}


//class Arrow {
//  float x, y;
//  float arrowColor;
  
//  void display() {
//    fill(arrowColor);
//    rectMode(CENTER);
//    rect(x,y,50,10);
//    triangle(x+40, y, x+15, y+20, x+15, y-20);
//  }
//}

//void draw() {
//  Arrow kyle = new Arrow();
  
//  kyle.x = 50;
//  kyle.y = 49;
//  kyle.arrowColor = 100;
  
//  kyle.display();
//}

//*****
//Lab 2
//*****

//class Frisbee {
//  float x, y, fWidth, fHeight;
//  float r, g, b;
  
//  Frisbee(float xpos, float ypos, float w, float h, float rC, float gC, float bC) {
//    x = xpos;
//    y = ypos;
//    fWidth = w;
//    fHeight = h;
//    r = rC;
//    g = gC;
//    b = bC;
//  }
  
//  void display(){
//    fill(r,g,b);
//    ellipse(x,y,fWidth,fHeight);
//    ellipse(x,y,fWidth/3, fHeight/3);
//  }
//}

//Frisbee fr;
//void setup() {
//  size(500,500);
//  smooth();
//  fr = new Frisbee(width/2, height/2, 100, 30, 255, 100, 0);
//}

//void draw() {
//  background(255);
//  fr.display();
//}


//class Arrow {
//  float x, y;
//  float arrowColor;
  
//  Arrow(float xPos, float yPos, float aColor) {
//    x = xPos;
//    y = yPos;
//    arrowColor = aColor;
//  }
  
//  void display() {
//    fill(arrowColor);
//    rectMode(CENTER);
//    rect(x,y,50,10);
//    triangle(x+40, y, x+15, y+20, x+15, y-20);
//  }
//}

//void draw() {
//  Arrow kyle = new Arrow(50,49,100);
  
//  kyle.display();
//}

//********************
//  In class example 1
//********************

class DayOfYear{
  int monthOfYear;
  int dayOfMonth;
  int year;
  
  DayOfYear(int month, int day, int yearPassed) {
    monthOfYear = month;
    dayOfMonth = day;
    year = yearPassed;
  }
  
  int getDay() {
    return dayOfMonth;
  }
  
  int getMonth() {
    return monthOfYear;
  }
  
  void advanceDay() {
    dayOfMonth++;
    if(dayOfMonth == 32) {
      dayOfMonth = 1;
      monthOfYear++;
      if(monthOfYear == 13) {
        monthOfYear = 1;
        year++;
      }
    }
  }
  
  void printDay() {
    if(monthOfYear == 1) {
      print("January");
    } else if(monthOfYear == 2) {
      print("February");
    } else if(monthOfYear == 3) {
      print("March");
    } else if(monthOfYear == 4) {
      print("April");
    } else if(monthOfYear == 5) {
      print("May");
    } else if(monthOfYear == 6) {
      print("June");
    } else if(monthOfYear == 7) {
      print("July");
    } else if(monthOfYear == 8) {
      print("August");
    } else if(monthOfYear == 9) {
      print("September");
    } else if(monthOfYear == 10) {
      print("October");
    } else if(monthOfYear == 11) {
      print("November");
    } else if(monthOfYear == 12) {
      print("December");
    }
    println(" " + dayOfMonth + " " + year);
  }
}

void setup() {
  DayOfYear date = new DayOfYear(12,7,1996);
  
  date.printDay();
  for(int i = 0; i < 8000; i++) {
    date.advanceDay();
  }
  date.printDay();
}