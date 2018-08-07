package ch4;

class Circle3 {
	private int radius;

	public Circle3(int radius) {
		this.radius = radius;
	}

	public int getRadius() {
		return this.radius;
	}

	public void setRadius(int radius) {
		this.radius = radius;
	}
}

class CircleManager { // static 메소드만 가짐
	static void copy(Circle3 src, Circle3 dest) { // src를 dest에 복사
		dest.setRadius(src.getRadius()); // src의 반지름을 dest에 복사
	}

	static boolean equals(Circle3 a, Circle3 b) { // a와 b의 반지름이 같으면 ture 리턴
		if (a.getRadius() == b.getRadius())
			return true;
		else
			return false;
	}
}

public class StaticTest {

	public static void main(String[] args) {
		Circle3 pizza = new Circle3(5); // 반지름이 5인 원을 생성
		Circle3 waffle = new Circle3(1); // 반지름이 1인 원을 생성

		boolean res = CircleManager.equals(pizza, waffle); // pizza와 waffle 비교
		if (res == true)
			System.out.println("pizza와 waffle 크기 같음");
		else
			System.out.println("pizza와 waffle 크기 다름");

		CircleManager.copy(pizza, waffle); // pizza를 waffle에 복사
		res = CircleManager.equals(pizza, waffle); // pizza와 waffle을 비교
		if (res == true)
			System.out.println("pizza와 waffle 크기 같음");
		else
			System.out.println("pizza와 waffle 크기 다름");
	}
}
