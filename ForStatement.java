package ch3;

public class ForStatement {

	public static void main(String[] args) {
		for(int i=100; i<=1000;i++) {
			System.out.println(i);
		}
		int i;
		for(i=100; i<=1000; i++) {
			System.out.println(i);
		}
		int i1=100;
		for(; i1<=1000; i1++) {
			System.out.println(i);
		}
		for(int i2=100, j=200; i2<=1000; i2+=100) {
			System.out.println(i);
		}
	}
}
