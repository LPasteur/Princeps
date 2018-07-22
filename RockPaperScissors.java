package ch2;

import java.util.Scanner;

public class RockPaperScissors {

	public static void main(String[] args) {
		System.out.println("가위 바위 보 게임입니다. 가위, 바위, 보 중에서 입력하세요");
		Scanner scanner = new Scanner(System.in);
		String a = scanner.next();
		String b = scanner.next();
		System.out.println("철수 >> "+a);
		System.out.println("영희 >> "+b);
		
		if(a.equals("가위")) {
			if(b.equals("바위"))
				System.out.println("영희가 이겼습니다.");
			else if(b.equals("가위"))
				System.out.println("비겼습니다.");
			else
				System.out.println("철수가 이겼습니다.");
		}
		else if(a.equals("바위")) {
			if(b.equals("보"))
				System.out.println("영희가 이겼습니다.");
			else if(b.equals("바위"))
				System.out.println("비겼습니다.");
			else
				System.out.println("철수가 이겼습니다.");
		}
		else {
			if(b.equals("가위"))
				System.out.println("영희가 이겼습니다.");
			else if(b.equals("보"))
				System.out.println("비겼습니다.");
			else
				System.out.println("철수가 이겼습니다.");
		}
		scanner.close();
	}
}
