package ch5;
class Overriding{
	void show(String str) {
		System.out.println("상위 클래스의 메소드 show(String str) 수행" + str);
	}
}
class SubOverriding extends Overriding{
	void show() {
		System.out.println("하위 클래스의 메소드 show() 수행");
	}
}
public class OverridingUse1 {

	public static void main(String[] args) {
		SubOverriding subO = new SubOverriding();
		subO.show("IT KOREA"); // 상속받은 show(String str)
		subO.show();
	}
}
