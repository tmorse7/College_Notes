
void setup() {
  size(400,400);
  frameRate(60);
}

void draw() {
  background(255, 150, 100);
  line(mouseX, mouseY, pmouseX, pmouseY);
}


/*
void setup() {
  size(100,100);
  noStroke();
  fill(0);
}

void draw() {
  background(204);
  if ((mouseX <= 50) && (mouseY <= 50)) {
    rect(0,0,50,50);
  } else if((mouseX >= 50) && (mouseY >= 50)) {
    rect(0,50,50,50);
  } else if((mouseX <= 50) && (mouseY <= 50)) {
    rect(50,0,50,50);
  } else {
    rect(50,50,50,50);
  }
}
*/