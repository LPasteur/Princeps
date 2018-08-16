package ch5;
class Person2{
}
class Student3 extends Person2{
}
public class DowncastingUse {

	public static void main(String[] args) {
		Person2 p1 = new Student3();
		Student3 s1;
		s1 = (Student3)p1; // 다운캐스팅(downcasting) 타입변환을 명시적으로 지정한다.
		
	}
}
