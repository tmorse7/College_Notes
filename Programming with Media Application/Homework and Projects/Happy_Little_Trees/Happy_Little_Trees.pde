//***************************************
//
//  makeTree(float, float)
//  Description: Draws some happy little trees.
//
//***************************************
void makeTree(float x, float y) {
  noStroke();

  fill(50, 50, 0);
  rect(x - 10, y + 60, 20, 20);

  fill(75, 150, 75);
  triangle(x - 25, y + 60, x + 25, y + 60, x, y + 20);
  triangle(x - 25, y + 40, x + 25, y + 40, x, y);
}

void setup() {
  size(200,200);
  makeTree(20, 20);
  makeTree(50, 20);
  makeTree(80, 20);
}