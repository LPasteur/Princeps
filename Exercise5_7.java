package ch5;

class A3{
	public int x;
}

public class Exercise5_7 extends A3 {
	public int y;
	
	public static void main(String[] args) {
		A3 a = new A3();
		Exercise5_7 b = new Exercise5_7();
		
		a = b;
		System.out.println(a.x);
		
		A3 a1 = new A3();
		System.out.println(a1.x);
		
		b = (Exercise5_7) new A3();
		b.y = 100;
		// Exception in thread "main" java.lang.ClassCastException: ch5.A3 cannot be cast to ch5.Exercise5_7 at ch5.Exercise5_7.main(Exercise5_7.java:13)
	}
}
