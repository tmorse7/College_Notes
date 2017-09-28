// loops lab 3


void setup() {
  size(600, 600);
  int x, y;
for (x = 0; x < 10 ; x++) {
  for (y = 0; y < 10; y++) {
    diamond(x,y);
    }
  }
}

void diamond(float x, float y) {
  quad(30+60*x, 25+60*y, 35+60*x, 30+60*y, 30+60*x, 35+60*y, 25+60*x, 30+60*y);
}