package ch5;
class Garbage{
	int objNo;
	public Garbage(int n) {
		objNo = n;
		System.out.println("Garbage class" + objNo + "이 만들어 졌습니다.");
	}
	// 객체의 메모리가 회수될 때 자동호출됩니다.
	protected void finalize() throws Throwable{
		super.finalize();
	}
}
public class GarbageUse {

	public static void main(String[] args) {
		Garbage [] ga = new Garbage[10];
		// 객체 생성
		for(int i=0; i<ga.length; i++) {
			ga[i] = new Garbage(i);
		}
		// 객체 메모리 해제
		for(int i=0; i<ga.length; i++) {
			ga[i] = null;
		}
		// 강제로 Garbage Collection기능 수행
		System.gc();
		for(int i=0; i<ga.length; i++) {
			System.out.println(ga[i].hashCode()); // 메모리가 해제되었기 때문에 오류발생
		}
	}
}
