package com.example4;

import java.util.InputMismatchException;
import java.util.Scanner;
import javax.naming.InvalidNameException;

public class ThrowExceptions {
	
	public static void main(String[] args) throws Exception {
		
		Scanner inputStudent = new Scanner(System.in);
		
	    System.out.println("Enter ypur username: ");
	    String uname = inputStudent.next();
	    
	    float gpa = 0f;
	    
	    try {
	    	System.out.println("Enter ypur GPA: ");
		    gpa = inputStudent.nextFloat();
		    
	    } catch(InputMismatchException e) {
	    	
//	    	throw new InputMismatchException("A GPA must have a numeric value between 0 to 4.33.");
	    	
	    	e.initCause(new IllegalArgumentException("The GPA needs to be a number between 0 to 4.33."));
	    	gpa =1.0f;
	    	System.out.println("What is the cause of the Exception? \n" + e.getCause());
	    }
	    
	    inputStudent.close();
	    
	    try {
	    	
	    	intermediateFunction(uname, gpa);
	    	
	    } catch (InvalidNameException e) {
	    	
	    	System.out.println(e.getClass() + ": The Username is invalid.");
	    	
	    	e.printStackTrace();
	    }
	}
	public static void intermediateFunction(String userId, float gpa) throws InvalidNameException{
		
		try {
			validateStudent(userId, gpa);
	    	
	    }catch(IllegalArgumentException e) {
	    	
	    	System.out.println( e.getClass() + ": The GPA is invalid.");
	    	
	    	e.printStackTrace();
	    }
	}
	
	public static void validateStudent(String userId, float gpa) throws InvalidNameException, IllegalArgumentException{
		
		if(userId.startsWith("loony_")) {
			
			System.out.println("The Username checks out...");
			
		}
		else {
			throw new InvalidNameException("The Username is not in the correct format");
		}
		
		if(gpa > 0 && gpa <= 4.33) {
			System.out.println("That is a valid GPA. Processing eligibility...");
		}
		else {
			throw new IllegalArgumentException("Sorry. A GPA must have a value between 0 and 4.33");
		}
	}
}
