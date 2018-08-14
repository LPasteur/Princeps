package ch5;
class Overriding2{
	void show() {
		System.out.println("부모 클래스의 메소드 show()");
	}
	void parent() {
		System.out.println("부모 클래스에만 있는 메소드 parent()");
	}
}
class SubOverriding2 extends Overriding2{
	// overriding
	void show() {
		System.out.println("자식 클래스의 메소드 show()");
	}
}
public class OverridingUse2 {

	public static void main(String[] args) {
		// 부모 클래스 객체 생성
		Overriding2 ov2 = new Overriding2();
		ov2.show();
		ov2.parent();
		// 자식 클래스 객체 생성
		SubOverriding2 sub2 = new SubOverriding2();
		sub2.show();
		sub2.parent();
	}
}
