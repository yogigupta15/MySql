package com.example5;

import java.io.FileNotFoundException;
import java.io.FileReader;

public class ExploringExceptions {

	public static void main(String[] args) throws FileNotFoundException {
		
		try {
			
			FileReader file = new FileReader("C:\\Users\\251636\\Desktop\\1.txt");
			
			} catch (FileNotFoundException e) {
				e.printStackTrace();
				
				System.out.println("\nThe file is was not found. create 1.txt and re-run.");
			}
		System.out.println("The code execution is complete!");
	}

}
