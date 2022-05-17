package com.example3;

public class ExploringException {
	
	public static void main(String args[]) {
		
//		String num_strs[] = { "3","56","78","67.89","677"};
//		
//		for (String str : num_strs) {
//			int varInt = Integer.parseInt(str);
//			System.out.println(varInt);	
//			}
		
/*		String myStrings[] = {"Hello","Java",null,"Program"};
		for(String str : myStrings) {
			System.out.format("The string %s the lenghth of %d\n",str.toUpperCase(),str.length());
		}
*/		
		
		
/*		String myStrings[] = {"Hello","Java",null,"Program"};
		for(String str : myStrings) {
			System.out.println(str);
		}
		myStrings[4] = "Python";
		System.out.println(myStrings[4]);
*/		
		
		String myStrings[] = {"Hello","Java",null,"Program"};
		for(String str : myStrings) {
			System.out.println(str.charAt(0));
			System.out.println(str.charAt(2));
			System.out.println(str.charAt(4));
		}
	}
}
