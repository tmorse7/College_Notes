//Number 1

//void addToElements(float [] itsAMoarArray, float number) {
//  for(int i=0; i<itsAMoarArray.length; i++) {
//    itsAMoarArray[i] += number;
//  }
//}

//void setup() {
//  float [] originalArray = {.5,1.0,1.5,2.0,2.5,3,3.5,4,4.5};
//  println(originalArray);
  
//  println();
  
//  addToElements(originalArray, .5);
//  println(originalArray);
//}


//Number 2

//int arrayMax(int [] itsAMoarArray) {
//  int biggestSoFar = itsAMoarArray[0];
  
//  for(int i=0; i<itsAMoarArray.length; i++) {
//    if(itsAMoarArray[i] > biggestSoFar) {
//      biggestSoFar = itsAMoarArray[i];
//    }
//  }
//  return biggestSoFar;
//}

//void setup() {
//  int [] numbers = {6,3,21,4,7,42};
  
//  println(arrayMax(numbers));
//}


//Number 3

int [] arrayCopy(int [] itsAMoarArray) {
  
  int [] newArray = new int[itsAMoarArray.length];
  
  for(int i = 0; i<itsAMoarArray.length; i++) {
    newArray[i] = itsAMoarArray[i];
  }
  return newArray;
}

void setup() {
  int [] numbers = {6,3,21,4,7,42};
  int [] numbers2 = new int[6];
  
  numbers2 = arrayCopy(numbers);
  
  println(numbers);
  println();
  println(numbers2);
}