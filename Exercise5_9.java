package ch5;

class Shape {
	public void draw() {
		System.out.println("Shape");
	}
}

public class Exercise5_9 extends Shape {
	public void paint() {
		draw();
		super.draw();
	}
	@Override
	public void draw() {
		System.out.println("Circle");
	}

	public static void main(String[] args) {
		Exercise5_9 circle = new Exercise5_9();
		circle.paint();
	}
}
