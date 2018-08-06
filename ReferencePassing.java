package ch4;

public class ReferencePassing {
	static void increase(Circle2 m) {
		m.radius++;
	}
	public static void main(String[] args) {
		Circle2 pizza = new Circle2(10);
		increase(pizza);
		System.out.println(pizza.radius);
	}
}
