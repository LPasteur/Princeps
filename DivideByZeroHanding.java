package ch3;

import java.util.Scanner;

public class DivideByZeroHanding {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		int dividend;    // 나뉨수
		int divisor;     // 나눗수
		
		System.out.println("나뉨수를 입력하세요 : ");
		dividend = scanner.nextInt();
		System.out.println("나눗수를 입력하세요 : ");
		divisor = scanner.nextInt();
		try {
		System.out.println(dividend + "를 " + divisor + "로 나누면 몫은 " + dividend/divisor + "입니다.");
		}            // divisor가 0인 경우 ArithmeticException예외 발생
		catch(ArithmeticException e) {      // ArithmeticException 예외 처리 코드
			System.out.println("0으로 나눌 수 없습니다.");
		}
		finally {
			scanner.close();
		}
	}

}
