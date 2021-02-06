package collections;

import java.util.Hashtable;
import java.util.Map;

public class HashTables {
	public static void main(String[] args) {
		Hashtable<String,String> ht = new Hashtable<>();
		ht.put("Yashu", "Goli");
		ht.put("Gayathri", "Kadali");
		ht.put("Dharani", "Kaki");
		
		System.out.println("Hash Table after insertion: ");
		for(Map.Entry m : ht.entrySet()) {
			System.out.println("First Name: " + m.getKey() + " , " + "Surname: " + m.getValue());
		}
		
		ht.remove("Gayathri");
		System.out.println("Hash Table after deletion: ");
		for(Map.Entry m : ht.entrySet()) {
			System.out.println("First Name: " + m.getKey() + " , " + "Surname: " + m.getValue());
		}
	}
}
