package ch5;
class LCD{
	private int size;
	public LCD(int n) { size = n; }
	public int getSize() { return size; }		// 캡슐화(정보은닉)으로 getTerm메소드를 사용하여 보이게 하기.
}
public class Exercise5_5 extends LCD{
	int colorSize;
	public Exercise5_5(int colorSize, int size) {
		super(size);
		this.colorSize = colorSize;
	}
}
