public static String convert(int number, int base)
{
    int quotient = number / base;
    int remainder = number % base;

    if (quotient == 0) // base case
    {
        return Integer.toString(remainder);      
    }
    else
    {
        return convert(quotient, base) + Integer.toString(remainder);
    }            
}

void setup(){
  println(convert(936, 16));
}