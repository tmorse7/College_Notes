//****************************************************************
//Program Name: Type_Practice
//Author:  Tristan Morse
//Date:  8/31/16
//Version:  0.1
//Purpose:  Print Values
//Comments:
//****************************************************************

//Canvas Size
size(700,1000);

//Type Assignments
char c;
float f;
int i;
byte b;

//Defined Variables
c = 'A';
f = float(c);
i = int(f * 1.4);
b = byte(c / 2);

//Prints strings that add the variable types defined above to the end
println("The value of variable c is " + c);
println("The value of variable f is " + f);
println("The value of variable i is " + i);
println("The value of variable b is " + b);

//Text in Window
fill(255,0,255);
text("The value of variable c is " + c,width/2, 50);
text("The value of variable f is " + f,width/2,100);
text("The value of variable i is " + i,width/2,150);
text("The value of variable b is " + b,width/2,200);