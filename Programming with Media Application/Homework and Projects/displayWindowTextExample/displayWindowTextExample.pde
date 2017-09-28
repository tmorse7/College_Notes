// Adam Whitley

// EXAMPLE: Display window text.
// It's a 6 step process.

// Step 1: Create the font using the Tools menu above
PFont f; // Step 2: Declare a PFont variable 
void setup() { 
  size(200, 200); 
  f = loadFont( "AGaramondPro-Italic-48.vlw" ); // Step 3: Load Font 
  // Remember to write the whole filename ending with .vlw
} 

void draw() { 
  background(255); 
  textFont(f, 30);     // Step 4: Specify font to be used 
  fill(0);             // Step 5: Specify font color 
  text( "Yay for Strings!", 10, 100);  // Step 6: Display Text 
}