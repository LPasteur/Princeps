package ch5;

class Point1 {
	private int x, y; // 한 점을 구성하는 x,y 좌표

	Point1() {
		this.x = this.y = 0;
	}

	Point1(int x, int y) {
		this.x = x;
		this.y = y;
	}

	void showPoint() { // 점의 좌표 출력
		System.out.println("(" + x + "," + y + ")");
	}
}

class ColorPoint1 extends Point1 { // Point1을 상속받은 ColorPoint1을 선언
	private String color; // 점의 색

	ColorPoint1(int x, int y, String color) {
		super(x, y); // Point1의 생성자 Point1(x,y)를 호출
		this.color = color;
	}

	void showColorPoint() { // 컬러 점의 좌표 출력
		System.out.print(color);
		showPoint(); // Point1 클래스의 showPoint()를 호출
	}
}

public class SuperEx {

	public static void main(String[] args) {
		ColorPoint1 cp = new ColorPoint1(5, 6, "blue");
		cp.showColorPoint();
	}
}
