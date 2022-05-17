package com.example6;

import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.IOException;

public class ExploringExceptions {

	public static void main(String[] args) {
		
		System.out.println("Contents of the file:\n");
		
		FileInputStream myfile = null;
		try {
			myfile = new FileInputStream("C:\\Users\\251636\\Desktop\\myfile.txt");
			DataInputStream readFile = new DataInputStream(myfile);
			while (true) {
				System.out.println(readFile.readUTF());
			}
		}catch(IOException e) {
			System.out.println("An IOException has been thrown.");
			e.printStackTrace();
		}
	}

}
