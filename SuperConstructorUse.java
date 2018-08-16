package ch5;
class SuperC{
	int i, j;
	public SuperC(){}
	public SuperC(int i, int j) {
		this.i = i;
		this.j = j;
	}
	void show() {
		System.out.println("상위클래스의 메소드 show() 수행");
	}
}
class SubC extends SuperC{
	int k;
	public SubC(int i, int j, int k) {
		super(i, j); // 상위클래스의 생성자 호출
		this.k = k;
	}
	void show() {
		System.out.println("하위클래스의 메소드 show() 수행");
		System.out.println("상위클래스의 show() 메소드 호출");
		super.show();
	}
}
public class SuperConstructorUse {
	public static void main(String[] args) {
		SubC sc = new SubC(10,20,30);
		System.out.println("i, j, k 값 : " + sc.i + ", " + sc.j + ", " + sc.k);
		sc.show();
	}
}
