int maxPrime;

int [] array = new int[0];
int [] primeArray = new int[0];

for(int i=1; i<100; i++) {
  boolean isPrime = true;
  for(int j=2; j<i; j++) {
    if((i%j)==0){
      isPrime= false;
    }
  
    }
  if (isPrime== true){
  primeArray= append(primeArray, i);
  }

}

println(primeArray);