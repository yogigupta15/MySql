package com.example2;

public class ExploringException {
	
	public static void main(String args[]) {
		
		int numerator = 100;
		int denominetor = 5;
		
		while(denominetor >= 0) {
			
			int result = numerator / denominetor;
			System.out.println(result);
			
			denominetor--;
		}
	}
}
