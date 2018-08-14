package ch5;
class Final{
	int money = 10000; // 인스턴스변수 선언
	// 값을 변경할 수 없다.
	final int day = 7; // 일주일은 7일
	final int week = 4; // 한달은 4주
	// 객체를 생성하지 않아도 사용할 수 있다.
	final static int month = 12; // final static변수 선언
	
	// 기본 생성자
	public Final() {
	}
}
public class FinalUse {

	public static void main(String[] args) {
		Final fi = new Final();
		fi.money = 15000;
		// fi.day = 10;  값을 변경할 수 없다.
		System.out.println("1주일 용돈 : " + fi.money*fi.day); // 1주일 용돈 : 105000
		System.out.println("1년" + Final.month + "달"); // 1년12달
		// Final.month = 20000;   final static으로 선언된 month는 값을 대입할 수 없다.
	}
}
