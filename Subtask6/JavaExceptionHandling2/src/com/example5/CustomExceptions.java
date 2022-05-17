package com.example5;

public class CustomExceptions {
	
	public static void main(String[] args) {
		
		userRequest("loony_corn", "login");
		userRequest("loony_admin_alice", "delete");
		userRequest("loony_dev_bob", "delete");
	}
	
	public static void userRequest(String userId, String operation) {
		
		if(userId.startsWith("loony_")) {
			
			System.out.println("The username checks out...");
			
		}else {
			
			throw new InvalidUsernameException("The username is not the correct format.");
			
		}
		if(operation.equals("edit") || operation.equals("delete")) {
			
			if(!userId.startsWith("loony_admin")) {
				
				throw new IllegalAccessError("The user does not have the required permissions.");
			}
		}
		System.out.format("\nThe user %s has requested the %s operation.", userId,operation);
	}
}
