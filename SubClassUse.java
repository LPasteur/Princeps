package ch5;
class AB{
	public int p;
	public int n;
	public void setN(int n) {
		this.n = n;
	}
	public int getN() {
		return n;
	}
}
class BC extends AB{
	private int m;
	public int getM() {
		return m;
	}
	public void setM(int m) {
		this.m = m;
	}
	public String toString() {
		String s = getN() + " " + getM();
		return s;
	}
}
public class SubClassUse {

	public static void main(String[] args) {
		AB a = new AB();
		System.out.println(a.toString());
		BC b = new BC();
		System.out.println(b.toString());
	}
}
