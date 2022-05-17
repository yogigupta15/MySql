package com.example1;

import java.util.Scanner;

public class ThrowExceptions {

	public static void main(String[] args) {
		
		System.out.println("Enter your GPA to check your eligibility for addmission: ");
		
		Scanner inputGPA = new Scanner(System.in);
		float gpa = inputGPA.nextFloat();
		inputGPA.close();
		
		validGPA(gpa);
	}

	public static void validGPA(float gpa) throws IllegalArgumentException {
		
		if(gpa > 5 && gpa <= 9.33) {
			
			System.out.println("That is valid GPA. Processing eligibility...");
			
		} else {
			
			throw new IllegalArgumentException("Sorry. A GPA must have a value between 5 to 9.33.");
		}
	}
}
