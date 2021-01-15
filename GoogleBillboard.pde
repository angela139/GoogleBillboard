public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{   
    // Google Billboard part 1 function that shows first 10 numbers in e that are prime
    primeNums();
    /* Google Billboard part 2 function that shows 5 ten-digit numbers in e 
    where individual digits add up to 49 ex. 7+1+8+2+8+1+8+2+8+4 = 49*/
    //fortyNine();
}  
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
    // nums less than or equal to 1 are not prime
    if (dNum <= 1){
    return false;
    }
    // checks factors
    for (int i = 2; i <= Math.sqrt(dNum); i++){
      if (dNum % i == 0){
        return false;
      }
    }
  return true;    
} 
public boolean isFortyNine(String item)
{
  int sum = 0;
  // adds up digits of each ten-digit segments of e
  for (int i = 0; i < 10; i++){
    String digits = item.substring(i, i + 1);
    double n = Double.parseDouble(digits);
    sum += n;
  }
  if (sum == 49){
    return true;
  }
  return false;
}
// function that outputs first ten-digit prime nums
public void primeNums(){
  for (int i = 2; i <= e.length() - 10; i++){
        String digits = e.substring(i, i + 10);
        double dNum = Double.parseDouble(digits);
        if (isPrime(dNum) == true){
        System.out.println(dNum);
        break;
        } 
  }
}
// function that outputs ten-digit 49 sum 
public void fortyNine(){
  for (int i = 2; i <= e.length() - 10; i++){
        String digits = e.substring(i, i + 10);
        double dNum = Double.parseDouble(digits);
        if (isFortyNine(digits) == true){
        System.out.println(dNum);
      } 
  }
}
