package ch5;

class Circle {
	private int radius;

	public Circle(int radius) {
		this.radius = radius;
	}

	public int getRadius() {
		return radius;
	}
}

class Practice5_1 extends Circle {
	private String name;

	Practice5_1(int radius, String name) {
		super(radius);
		this.name = name;
	}

	public void show() {
		System.out.println(name + ", ¹ÝÁö¸§ = " + getRadius());
	}

	public static void main(String[] args) {
		Practice5_1 w = new Practice5_1(5, "waffle");
		w.show();
	}
}
