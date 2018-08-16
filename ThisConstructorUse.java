package ch5;
class ThisData{
	int i;
	int j;
	int k;
	// a.생성자
	public ThisData() {
		this.i = 0;
		this.j = 0;
		this.k = 0;
	}
	// b.생성자
	public ThisData(int i) {
		this.i = i;
	}
	// c.생성자
	public ThisData(int i, int j) {
		this(i); // b.생성자가 호출되어 초기화된다.
		this.j = j;
	}
}
public class ThisConstructorUse {

	public static void main(String[] args) {
		ThisData td = new ThisData(100,90);
		System.out.println("td.i : " + td.i);
		System.out.println("td.j : " + td.j);
		System.out.println("td.k : " + td.k);
	}
}
