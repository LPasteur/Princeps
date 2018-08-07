package ch4;

public class Box1 {
	private int width, height;
	private char fillChar;

	public Box1() {
		this(10, 1);
	}

	public Box1(int width, int height) {
		this.width = width;
		this.height = height;
	}

	public void draw() {
		for (int i = 0; i < height; i++) {
			for (int j = 0; j < width; j++)
				System.out.print(fillChar);
			System.out.println(fillChar);
		}
	}

	public void fill(char c) {
		fillChar = c;
	}

	public static void main(String[] args) {
		Box1 a = new Box1();
		Box1 b = new Box1(20, 3);
		a.fill('*');
		b.fill('%');
		a.draw();
		b.draw();

	}

}
