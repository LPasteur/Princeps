package ch5;
class School1{
	int year = 0;
	public School1() {
		this.year = 0;
	}
}
class MiddleSchool extends School1{
	int year = 0;
	public MiddleSchool() {
		this.year = 3;
	}
	public void prn() {
		System.out.println("year : " + year);
		System.out.println("this.year : " + this.year);
		System.out.println("super.year : " + super.year); // 부모클래스
	}
}
public class SuperUse {
	public static void main(String[] args) {
		MiddleSchool ms = new MiddleSchool();
		ms.prn();
	}
}
