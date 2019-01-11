public final static String e = "2718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  
{           
  int beginIndex = 0;
  int endIndex = 10;
  String digits = e.substring(beginIndex, endIndex);
  double dNum = Double.parseDouble(digits);
  for (int j=0; j < e.length(); j++) {
    digits = e.substring(beginIndex, endIndex);
    dNum = Double.parseDouble(digits);
    beginIndex = j;
    endIndex = j + 10;
    if (isPrime(dNum) == true)
      break;
  }

  System.out.println(digits);
}

//your code here 
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
  if (dNum < 2) return false;
  for (int i = 2; i <= Math.sqrt(dNum); i++) {
    if (dNum % i == 0)
      return false;
  }

  //your code here   
  return true;
} 
