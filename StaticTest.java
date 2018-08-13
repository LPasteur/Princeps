package ch5;

class Static {
	public static int b = 0; // 최초 1회 메모리 할당을 받고 모든 객체들이 공유한다.
	private int a = 0; // 인스턴스 변수
}
public class StaticTest{
	public static void main(String [] args) {
		System.out.println("Static.b : " + Static.b);
		Static st = new Static();
		System.out.println("st.b : " + st.b);
	}
}
