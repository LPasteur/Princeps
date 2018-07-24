package ch3;

import java.util.Scanner;

public class MultiplicationTable {

	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		for(int i=1; i<10; i+=3) {
			System.out.println(i + "´Ü" + "\t" + (i+1) + "´Ü" + "\t" + (i+2) + "´Ü");
			for(int j=1; j<10; j++) {
				System.out.print(i + "*" + j + "=" + i*j);
				System.out.print("\t");
				System.out.print((i+1) + "*" + j + "=" + (i+1)*j);
				System.out.print("\t");
				System.out.println((i+2) + "*" + j + "=" + (i+2)*j);
			}
			System.out.println();
		}
		in.close();
	}
}
