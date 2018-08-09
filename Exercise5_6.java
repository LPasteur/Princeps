package ch5;

class A2 {
	public A2(int x) {
		System.out.print("A" + x);
	}
}

public class Exercise5_6 extends A2 {
	public Exercise5_6() {
		super(20);
		System.out.print("B");
	}

	public Exercise5_6(int x) {
		super(x + 20);
		System.out.print("B" + x);
	}

	public static void main(String[] args) {
		Exercise5_6 b = new Exercise5_6();
		System.out.println();
		Exercise5_6 b1 = new Exercise5_6(30);
	}
}
