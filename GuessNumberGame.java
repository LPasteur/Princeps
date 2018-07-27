package ch3;

import java.util.InputMismatchException;
import java.util.Random;
import java.util.Scanner;

public class GuessNumberGame {

	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		while (true) {
			System.out.println("수를 결정하였습니다. 맞추어 보세요.");
			Random r = new Random();
			int a = r.nextInt(100);
			int min = 0, max = 99;
			for (int i = 0;; i++) {
				System.out.println(a);
				System.out.println(min + "-" + max);
				System.out.print(i + ">>");
				try {
					int n = in.nextInt();
					if (a > n) {
						System.out.println("더 높게");
						min = n;
					} else if (a < n) {
						System.out.println("더 낮게");
						max = n;
					} else if (a == n) {
						System.out.println("맞았습니다.");
						System.out.print("다시하겠습니까(y/n)>>");
						String y = in.next();
						if (y.equals("y")) {
							break;
						} else {
							System.out.println("프로그램 종료");
							in.close();
							System.exit(0);
						}
					}
				} catch (InputMismatchException e) {
					System.out.println("정수가 아닙니다. 다시 입력하세요.");
					in.next();
					i--;
					continue;
				}
			}

		}
	}
}
