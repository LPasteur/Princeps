package ch5;
abstract class Sum{
	// 추상메소드
	public abstract String toString();
	public String sum(int i, int j) {
		int sum = i+j;
		return ""+sum;
	}
}
class SumSub1 extends Sum{
	// 추상메소드 오버라이딩
	@Override
	public String toString() {
		return "class SumSub1 extends Sum";
	}
}
class SumSub2 extends Sum{
	@Override
	public String toString() {
		return "class SumSub2 extends Sum";
	}
}
public class AbstactUse {
	public static void main(String[] args) {
		SumSub1 ss1 = new SumSub1();
		System.out.println(ss1.sum(10, 20));
		System.out.println(ss1.toString());
		
		SumSub2 ss2 = new SumSub2();
		System.out.println(ss2.sum(100, 200));
		System.out.println(ss2.toString());
	}
}
