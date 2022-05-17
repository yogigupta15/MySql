package com.example;

import java.util.Scanner;

public class CompileTimeError {
	
	public static void main(String args[]) {

		System.out.println("Enter any Number: ");
		
		Scanner input = new Scanner(System.in);
		int num = input.nextInt();
		input.close();
		System.out.println("You Enterd the number " + num);
		
		/* printing sum of array */
		
		int[] myArray = {12,66,89,789,99};
		int sum = 0;
		for(int num2 : myArray) {
			sum = sum+num2;
		}
		System.out.println("Sum of the array is " + sum);
		
		
		/* printing message */
		String message = "Hello Ntt Employess";
		System.out.println("your message is : " + message);
	}
}
