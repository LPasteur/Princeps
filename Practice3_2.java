package ch3;

import java.util.Scanner;

public class Practice3_2 {

	public static void main(String[] args) {
		int intArray[] = new int[10];
		System.out.print("정수 10개 입력>>");
		Scanner in = new Scanner(System.in);
		for(int i=0; i<10; i++) {
			intArray[i] = in.nextInt();
			if(intArray[i]%3==0) {
				System.out.print(intArray[i]);
			    System.out.print(" ");}
			else
				continue;
		}
		in.close();
	}
}
