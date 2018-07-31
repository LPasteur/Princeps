package ch4;

class Samp {
	int id;
	public Samp(int x) {this.id = x;}
	public Samp() {
		this(0);
		System.out.println("생성자 호출");
	}
	public static void main(String[] args) {
		new Samp();
	}
}
