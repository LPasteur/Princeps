package ch3;

import java.util.Scanner;

public class ContinueExample {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.println("정수를 5개 입력하세요.");
		int sum = 0;
		for(int i=0; i<5; i++) {
			int n=scanner.nextInt();
			if(n<=0) continue;       // 0이나 음수인 경우를 더하지 않고 다음 반복으로 진행
			else sum += n;
		}
		System.out.println("양수의 합은 "+sum);
		scanner.close();
	}

}
