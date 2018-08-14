package ch5;
class Car{
	public void gear() {
		System.out.println("수동 기어를 사용합니다.");
	}
}
class ChildCar extends Car{
	public void autoGear() {
		System.out.println("자동 기어를 사용합니다.");
	}
}
class ChildCar2 extends ChildCar{
	public void autoGear2() {
		System.out.println("자동/수동 기어를 혼합하여 사용합니다.");
	}
}
public class CarUse {

	public static void main(String[] args) {
		ChildCar2 cc2 = new ChildCar2();
		cc2.gear();
		cc2.autoGear();
		cc2.autoGear2();
	}
}
