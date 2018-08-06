package ch4;

public class CallByValue {
	static void increase(int m) {
		m = m+1;
	}
	public static void main(String args[]) {
		int n = 10;
		increase(n);
		System.out.println(n);
	}
}
