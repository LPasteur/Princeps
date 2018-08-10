package ch5;
class Point2{
	private int x, y;
	public Point2(int x, int y) { this.x = x; this.y = y; }
	public int getX() { return x; }
	public int getY() { return y; }
	protected void move(int x, int y) { this.x = x; this.y = y; }
}

public class Practice5_4 extends Point2{
	
	private String color;
	public Practice5_4(int x, int y, String color) {
		super(x,y);
		this.color = color;
	}
	public void setPoint(int x, int y) {
		move(x,y);
	}
	public void setColor(String color) {
		this.color = color;
	}
	public void show() {
		System.out.println(color + "»öÀ¸·Î(" + getX() + "," + getY()+")");
	}
	public static void main(String[] args) {
		Practice5_4 cp = new Practice5_4(5,5,"YELLOW");
		cp.setPoint(10,20);
		cp.setColor("GREEN");
		cp.show();
	}
}
