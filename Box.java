package ch2;

import java.util.Scanner;

public class Box {

	public static void main(String[] args) {
		System.out.println("키보드로 가로와 세로를 입력받아 사각형의 넓이와 둘레를 계산하여 출력하세요");

		Scanner scanner = new Scanner(System.in);
		double width = scanner.nextDouble();
		System.out.println("가로 : "+width);
		double length = scanner.nextDouble();
		System.out.println("세로 : "+length);
		double area = width * length;
		System.out.println("넓이 : "+area);
		double round = (width+length)*2;
		System.out.println("둘레 : "+round);
		
		scanner.close();
	}

}
