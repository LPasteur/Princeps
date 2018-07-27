package ch3;

import java.util.Scanner;

public class BodyMassIndex {

	public static void BMI() {
		while (true) {
			Scanner in = new Scanner(System.in);
			double weight = in.nextDouble();
			double height = in.nextDouble();
			double BMI = weight / Math.pow(height, 2);
			if (BMI < 18.5)
				System.out.println("저체중");
			else if (18.5 <= BMI && BMI < 23)
				System.out.println("정상");
			else if (23 <= BMI && BMI < 25)
				System.out.println("비만전단계");
			else if (25 <= BMI && BMI < 30)
				System.out.println("1단계 비만");
			else if (30 <= BMI && BMI < 35)
				System.out.println("2단계 비만");
			else if (BMI >= 35)
				System.out.println("3단계 비만");
			else if (in.nextInt() == 0) {
				System.out.println("종료합니다.");
				break;
			}
			in.close();
		}
	}

	public static void main(String[] args) {
		System.out.println("몸무게(kg), 키(m)를 입력하세요.");
		BMI();
	}
}
