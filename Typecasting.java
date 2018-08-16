package ch5;
class ClassA{
	public ClassA() {
		System.out.println("ClassA() 호출");
	}
}
class ClassB extends ClassA{
	public ClassB() {
		System.out.println("ClassB() 호출");
	}
}
class ClassC extends ClassB{
	public ClassC() {
		System.out.println("ClassC() 호출");
	}
}

public class Typecasting {
	public static void main(String[] args) {
		ClassA p0 = new ClassA();
		ClassB p1 = new ClassB();
		ClassC p2 = new ClassC();
		ClassA p3 = new ClassB();
		ClassA p4 = new ClassC();
		
		p0 = p1; // upcasting
		p1 = p2; // upcasting
		p2 = (ClassC)p4; 
		p2 = (ClassC)p1;
		p1 = (ClassB)p3;
		p2 = (ClassC)p4;
	}
}
