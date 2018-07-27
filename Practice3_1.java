package ch3;

import java.util.Scanner;

public class Practice3_1 {

	public static void main(String[] args) {
		System.out.print("알파벳 한 문자를 입력하세요>>");
		Scanner in = new Scanner(System.in);
		String s = in.next();
		char c = s.charAt(0);
		int n=(int)c;
		for(char j=97; j<=n; j++) {
			for(char i=j; i<=n; i++)
				System.out.print(i);
			System.out.println();}
		in.close();
	}
}
