//*****************************************************
// Program Name:  Comma_Insertion
// Author:  Tristan Morse
// Date:  10/26/16
// Class:  Intro to Programming with Media Application
// Version:  0.1
// Purpose:  To replace spaces in Strings with commas.
// Comments: 
//*****************************************************


//*****************************************************************************************************
// isCommaDelimited function:
// - Checks to see whether or not the string has commas to seperate the parts of the string
// - sT = String input
// - Returns a boolean in order to if the string either is or isn't needing commas in the next function
//******************************************************************************************************
boolean isCommaDelimited(String sT) {
  boolean result = true;                                              //Result constant to return to the function
  
  for(int i = 0; i < sT.length(); i++) {                              //If there isn't a comma in a space, return false
    if(sT.charAt(i) == ' ') {
      result = false;
    } else if(sT.charAt(i) == ','){                                   //If there is a comma in a space, return true
      result = true;
    }
  }
  return result;
}

//****************************************************************
// makeCommaDelimited function:
// - Places the commas in between the parts of the string
// - cS = String input
// - Returns a string to be able to print to the terminal in setup
//****************************************************************
String makeCommaDelimited(String cS) {
  String result = cS;                                                 //Result constant to return to the function
  
  if(isCommaDelimited(cS) == false) {                                 //Loop to replace space char's with comma char's
    for(int i = 0; i < cS.length()-1; i++) {
      if(cS.charAt(i) == ' ') {  
        result = cS.replace(' ', ',');
        break;
        }
      }
    } else if(isCommaDelimited(cS) == true){                          //If there are already commas, just return the string
    result = cS;
  }
  return result;
}


//***************************************************************************************
// setup function:
// - Sets the string and prints out the result when run through makeCommaLimited function
// - No parameters
// - Returns nothing to just have to print to the screen
//***************************************************************************************
void setup() {
  String s = "animal rabbit beaver duck moose camel jaguar";         //Sets the string
  String t = "this,was,so,simple,yet,took,forever,to,do";
  println(makeCommaDelimited(s));                                    //Prints the result of running the string through makeCommaDelimited function
  println(makeCommaDelimited(t));
}