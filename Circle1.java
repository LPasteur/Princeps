package ch4;

public class Circle1 {
	int radius;
	void set(int r) {radius=r;}
	double getArea() {return 3.14*radius*radius;}
	
	public Circle1() {
		radius = 5;
	}
	
	public Circle1(int r) {
		radius = r;
	}
	
	public static void main(String[] args) {
		Circle1 pizza = new Circle1(10);
		System.out.println(pizza.getArea());
		Circle1 donut = new Circle1();
		System.out.println(donut.getArea());
	}
}
