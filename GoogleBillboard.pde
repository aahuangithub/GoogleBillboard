public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";

public void setup()  
{            
	int eIndex = 12;
	String tenDigits = e.substring(eIndex-10, eIndex); 
	
	while(!isPrime((Double.parseDouble(tenDigits)))){
		tenDigits = e.substring(eIndex-10, eIndex);
		if (eIndex+1>e.length()) break;
		else eIndex++;
	}
	println(tenDigits+" << is prime");
    noLoop();  
}  
public void draw()  
{   
	//not needed for this assignment
}  
public boolean isPrime(double num){
  for(int i = 2; i<Math.sqrt(num)+1; i++) if(num%i == 0) 
  	return false;
  return true;
}
