package ch2;

public class TernaryOperator {

	public static void main(String[] args) {
		int c=5, d=3;
		int big = (c>d)?c:d;
		System.out.println(big);
		int a=3, b=5;
		System.out.println("두 수의 차는 "+((a>b)?(a-b):(b-a)));
		
		int x=2, y=10, z=0;
		z = x++*2+--y-5+x*(y%2);    // 2*2+9-5+3*(9%2)
		System.out.println(z);
		System.out.println(8>>1);
		int opr = 4;
		System.out.println(opr++);
	}

}
