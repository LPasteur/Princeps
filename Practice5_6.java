package ch5;

import java.util.Scanner;

abstract class Object {
	abstract public void draw();
}

class Line extends Object {
	public void draw() {
		System.out.println("Line");
	}
}

class Rect extends Object {
	public void draw() {
		System.out.println("Rect");
	}
}

class Circle1 extends Object {
	public void draw() {
		System.out.println("Circle");
	}
}

public class Practice5_6 {
	public void Practice5_6() {
		final int MAX = 100;
		Object store[] = new Object[MAX];

		int last = 0; // 도형의 갯수
		int loop = 1; // 메뉴를 순환시키는 변수
		int number, number2; // 입력받은 값을 저장하는 변수

		while (loop != 4) {
			System.out.print("삽입(1), 삭제(2), 모두 보기(3), 종료(4)>>");
			Scanner input = new Scanner(System.in);
			loop = input.nextInt();

			switch (loop) {
			case 1: // 삽입
				System.out.print("도형 종류 Line(1), Rect(2), Circle(3)>>");
				Scanner first = new Scanner(System.in);
				number = first.nextInt();

				if (number == 1) {
					store[last] = new Line();
					last++;
				} else if (number == 2) {
					store[last] = new Rect();
					last++;
				} else if (number == 3) {
					store[last] = new Circle1();
					last++;
				} else {
					System.out.print("1~3중에서 선택하시오.");
				}
				break;

			case 2: // 삭제
				if (last != 0) {
					System.out.println("삭제할 도형의 위치>>");
					Scanner second = new Scanner(System.in);
					number2 = second.nextInt();
					if (number2 <= last) {
						for (int i = number2 - 1; i < last; i++) {
							store[i] = store[i + 1];
						}
						last--;
					} else {
						System.out.print("삭제할 도형의 위치를 잘못 선택하셨습니다.");
					}
				} else {
					System.out.println("삭제할 도형이 없습니다.");
				}
				break;

			case 3: // 모두 보기
				if (last != 0) {
					for (int i = 0; i < last; i++) {
						store[i].draw();
					}
				} else {
					System.out.println("출력할 도형이 없습니다.");
				}
				break;

			case 4: // 종료
				System.out.println("프로그램을 종료합니다.");
				break;

			default:
				System.out.println("1~4중에서 선택하시오.");
				continue; // while문 처음으로
			}
		}
	}

	public static void main(String[] args) {
		Practice5_6 edit = new Practice5_6();
		edit.Practice5_6();
	}
}
