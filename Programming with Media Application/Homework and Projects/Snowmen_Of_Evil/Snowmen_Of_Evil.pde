void snowman(float x, float y) {
  fill(255);
  ellipse(x, y + 60, 50, 50);
  ellipse(x, y + 30, 40, 40);
  ellipse(x, y, 30, 30); 
  
  fill(0);
  ellipse(x-5, y, 5, 5);
  ellipse(x+5, y, 5, 5);
  
}

void setup() {
  size(400,400);
  snowman((int) random(60,width-60), (int) random(60,height-90));
  snowman((int) random(60,width-60), (int) random(60,height-90));
  snowman((int) random(60,width-60), (int) random(60,height-90));
  snowman((int) random(60,width-60), (int) random(60,height-90));
}