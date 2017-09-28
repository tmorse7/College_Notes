float xoff = 0.0, yoff = 0.0;
float rColor, gColor, bColor;
float y;


void setup() {
  size(640, 360);
  rColor = 255;
  gColor = 255; 
  bColor = 255;
}

void draw() {
  background(51);

  fill(rColor, gColor, bColor);
  // We are going to draw a polygon out of the wave points
  beginShape(); 

  xoff = 0;       // Option #1: 2D Noise
  //xoff = yoff; // Option #2: 1D Noise
  
  // Iterate over horizontal pixels
  for (float x = 0; x <= width; x += 10) {
    // Calculate a y value according to noise, map to 
      y = map(noise(xoff, yoff), 0, 1, 200,300); // Option #1: 2D Noise
      // y = map(noise(xoff), 0, 1, 200,300);    // Option #2: 1D Noise
    
    // Set the vertex
    vertex(x, y); 
    // Increment x dimension for noise
    xoff += 0.05;
  }
  // increment y dimension for noise
  yoff += 0.01;
  vertex(width, height);
  vertex(0, height);
  endShape(CLOSE);
}