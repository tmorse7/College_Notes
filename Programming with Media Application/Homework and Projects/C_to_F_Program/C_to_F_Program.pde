float FTC(float temp) {
  return (temp-32)*5/9;
}

float CTF(float temp) {
  return temp*1.8+32;
}

void setup() {
  
  
  println(FTC(10));
  println(CTF(30));
}