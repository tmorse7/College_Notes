//****************
//  Tristan Morse
//  Test 3
//****************


//***********************
// howManyLarger function
//***********************
int howManyLarger(int [] a, int testValue) {
  int numberLarger = 0;
  for(int i=0; i < a.length; i++) {
    if(a[i] > testValue) {
      numberLarger += 1;
    }
  }
  return numberLarger;
}

void setup() {
  int array [] = {3, 7, 20, 5, 15, 30};
  
  println(howManyLarger(array, 4));
}

//***********************
//  Interactive Animation
//***********************

// I would try to do this, but alas, my computer doesn't seem to want to be able to right click
// thus, I cannot test it.