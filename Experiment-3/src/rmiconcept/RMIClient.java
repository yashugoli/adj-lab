package rmiconcept;

import java.rmi.Naming;
import java.util.Scanner;

public class RMIClient {
	public static void main(String[] args) throws Exception{
		int x,y,result;
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter x:");
		x = sc.nextInt();
		System.out.println("Enter y:");
		y = sc.nextInt();

		Addition sum =(Addition)Naming.lookup("rmi://localhost:2000/additionServer");

		result = sum.add(x,y);
		System.out.println("Addition Result:"+result);
	}
}