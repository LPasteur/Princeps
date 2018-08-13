package ch5;
class Scjp{
	// 멤버변수. Heap
	int t1 = 0;
	int t2 = 0;
	int t3 = 0;
	int t4 = 0;
	// 클래스변수
	static int BONUS = 100;
	// 생성자
	public Scjp() {
	}
	public Scjp(int t1, int t2, int t3, int t4) {
		this.t1 = t1;
		this.t2 = t2;
		this.t3 = t3;
		this.t4 = t4;
	}
}
public class ScjpUse {
	public static void main(String[] args) {
		System.out.println("Scjp.BONUS : " + Scjp.BONUS);
		Scjp sp = new Scjp(90,85,80,100);
		System.out.println("sp.t1 : " + sp.t1);
		System.out.println("sp.t2 : " + sp.t2);
		System.out.println("sp.t3 : " + sp.t3);
		System.out.println("sp.t4 : " + sp.t4);
	}
}
