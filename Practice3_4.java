package ch3;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Practice3_4 {

	public static void main(String[] args) {
		String day [] = {"일","월","화","수","목","금","토"};
		Scanner in = new Scanner(System.in);
		while(true) {
			try {
				System.out.print("정수를 입력하세요>>");
				int a = in.nextInt();
				if(a>=0) {
					System.out.println(day[a%7]);
				}
				else if(a<0) {
					System.out.println("프로그램을 종료합니다.");
					break;
				}
			}
			catch(InputMismatchException e){
				System.out.println("경고! 수를 입력하지 않았습니다.");
				in.next();
				continue;
			}
		}
	}
}
