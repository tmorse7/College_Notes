String message = "tickle";
float x, y; // X and Y coordinates of text
float hr, vr;  // horizontal and vertical radius of the text

void setup() {
  size(640, 360);
  
  // Create the font
  textFont(createFont("AnonymousPro-Bold-48", 36));
  textAlign(CENTER, CENTER);
  
  hr = textWidth(message) / 2;
  vr = (textAscent() + textDescent()) / 2;
  noStroke();
  x = width / 2;
  y = height / 2;
}

void draw() {
  fill(204);
  rect(0, 0, width, height);
  
  // If the cursor is over the text, change the position
  fill(0);
  text(message, x, y);
}