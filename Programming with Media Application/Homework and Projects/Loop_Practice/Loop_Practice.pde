size(200,600);

int y;

for (y = 0; y < 10; y++) {
  fill(25*y, 25*y, 25*y);
  quad(100,25+60*y,105,30+60*y,100,35+60*y,95,30+60*y);
}