package collections;

import java.util.ArrayList;

public class ArrayLists {
	public static void main(String args[]) {
		ArrayList<String> s1 = new ArrayList<String>();
		sl.add("Yashu");
		sl.add("Goli");
		sl.add("Chirala");
		System.out.println("Array List elements inserted normally:"+sl);
		sl.add(1,"Yash");
		sl.add(3,"Bhimavaram");
		System.out.println("ArrayList elements inserted based on index:"+sl);
		sl.remove("Goli");
		System.out.println("Array List element removed based on element:"+sl);
		sl.remove(1);
		System.out.println("Array List element removed based on their index:"+sl);
	}
}
