//****************************************************
// Program Name:  Homework_7
// Author:  Tristan Morse
// Date:  11/23/16
// Class:  Intro to Programming with Media Application
// Version:  0.1
// Purpose:  To manipulate arrays
// Comments: 
//****************************************************


//*********************************************
//  arrayAverage function:
//  -  Averages up the values given in an array
//  -  int [] a = Given array
//  -  returns an int value
//*********************************************
int arrayAverage(int [] a) {
  int sum = 0;
  for(int i=0; i < a.length; i++) {
    sum = sum + a[i];
  }
  int average = sum/a.length;
  return average;
}


//********************************************************************************
//  search function:
//  -  Looks through an array and finds where a given value is in the index
//  -  int [] a = Given array, int searchValue = the value the user is looking for
//  -  returns an int value
//********************************************************************************
int search(int [] a, int searchValue) { 
  int result = 0;
  for(int j=0; j < a.length; j++) {
    if(searchValue == a[j]) {
      return j;
    }
    if(searchValue != a[j]) {
      result = -1;
    }
  }
  return result;
}


//*************************************************************************************
//  rightCircularShift function:
//  -  Shifts each value in a given array to the right, placing the last value in front
//  -  int [] a = Given array
//  -  returns void
//*************************************************************************************
void rightCircularShift(int [] a) {
  int temp = a[a.length-1];
  for (int i = a.length - 1; i > 0; i--) {
    a[i] = a[i-1];
  }
  a[0] = temp;
}


void setup() {
  //Arrays
  int array1 [] = {22,11,95,77,38};
  int array2 [] = {99,61,35,30,80};
  int array3 [] = {12,61,4,86,75};
  int array4 [] = {48,13,24,81,55};
  int array5 [] = {73,31,29,13,6};
  
  //Search values
  int search1 = 11;
  int search2 = 100;
  int search3 = 86;
  int search4 = 24;
  int search5 = 70;
  
  //Array Manipulation Printing
  
  println("-----------------------");
  
  println("Original array1:");
  println(array1);
  println("");
  println("arrayAverage of array1: " + arrayAverage(array1));
  println("");
  println("search for: " + search1);
  println("Found in index: " + search(array1, search1));
  println("");
  println("rightCircularShift of array1:");
  rightCircularShift(array1);
  println(array1);
  
  println("-----------------------");
  
  println("Original array2:");
  println(array2);
  println("");
  println("arrayAverage of array2: " + arrayAverage(array2));
  println("");
  println("search for: " + search2);
  println("Found in index: " + search(array2, search2));
  println("");
  println("rightCircularShift of array2:");
  rightCircularShift(array2);
  println(array2);
  
  println("-----------------------");
  
  println("Original array3:");
  println(array3);
  println("");
  println("arrayAverage of array3: " + arrayAverage(array3));
  println("");
  println("search for: " + search3);
  println("Found in index: " + search(array3, search3));
  println("");
  println("rightCircularShift of array3:");
  rightCircularShift(array3);
  println(array3);
  
  println("-----------------------");
  
  println("Original array4:");
  println(array4);
  println("");
  println("arrayAverage of array4: " + arrayAverage(array4));
  println("");
  println("search for: " + search4);
  println("Found in index: " + search(array4,search4));
  println("");
  println("rightCircularShift of array4:");
  rightCircularShift(array4);
  println(array4);
  
  println("-----------------------");
  
  println("Original array5:");
  println(array5);
  println("");
  println("arrayAverage of array5: " + arrayAverage(array5));
  println("");
  println("search for: " + search5);
  println("Found in index: " + search(array5, search5));
  println("");
  println("rightCircularShift of array5:");
  rightCircularShift(array5);
  println(array5);
  
  println("-----------------------");
}