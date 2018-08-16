package ch5;
class This{
	String area = "";
	public void prn() {
		System.out.println("이 메소드를 호출한 객체의 hashCode : " + this);
		System.out.println(this.area);
	}
}
public class ThisUse {

	public static void main(String[] args) {
		This obj1 = new This();
		obj1.area = "대구광역시";
		obj1.prn();
		System.out.println("obj1.hashCode() : " + obj1.hashCode());
	}
}
