package ch5;

class A1{
	int i;
}
class B1 extends A1{
	int j;
}
class C2 extends B1{
	int k;
}
class D1 extends B1{
	int k;
}

public class Exercise5_8 {

	public static void main(String[] args) {
		A1 c = new C2();
		System.out.println(c instanceof D1); 		// false
		System.out.println(c instanceof A1); 		// true
		
//		System.out.println(new D1() instanceof C2);    	  Incompatible conditional
		System.out.println(new D1() instanceof A1); 		// true
	}
}
