package ch5;

/* 부모타입으로 자동타입 변환횐 후에는 부모 클래스에 선언된 필드와 메소드만 접긍니 가능하다.
예외) 메소드가 자식클래스에서 오버라이딩되면 자식클래스의 메소드가 대신 호출된다. */
public class ComputerExample {

	public static void main(String[] args) {
		int r = 10;
		Calculator calculator = new Calculator();
		Calculator calculator1 = new Computer();
		System.out.println("원면적 : " + calculator1.areaCircle(r));
		System.out.println("원면적 : " + calculator.areaCircle(r));
		System.out.println();
		
		Computer computer = new Computer();
		System.out.println("원면적 : " + computer.areaCircle(r));
	}

}
