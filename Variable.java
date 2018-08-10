package ch5;

public class Variable {
	// 멤버변수, 인스턴스변수, 필드, Heap
	String movie = "트로이";

	public void show() {
		System.out.println("show 메소드 영역 : " + movie); // 트로이
	}

	public void title() {
		String movie = "아마겟돈";
		System.out.println("title 메소드 영역 : " + movie); // 아마겟돈
		System.out.println("title this.movie" + this.movie); // 트로이
	}

	public static void main(String[] args) {
		Variable v = new Variable();
		v.show();
		v.title();
		v.show();
	}

}
