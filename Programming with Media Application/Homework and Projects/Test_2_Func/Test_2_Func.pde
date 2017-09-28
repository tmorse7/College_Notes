//  Tristan Morse
//  Test 2 Function

int randForLetterGrade(char LG) {
  if(LG == 'A') {
    return((int) random(90,101));
  } else if(LG == 'B') {
    return((int) random(80,90));
  } else if(LG == 'C') {
    return((int) random(70,80));
  } else if(LG == 'D') {
    return((int) random(60,70));
  } else if(LG == 'F') {
    return((int) random(0,59));
  } else {
    return((int) random(0,59));
  }
}