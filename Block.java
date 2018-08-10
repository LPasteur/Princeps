package ch5;

public class Block {
	String block = "재미있는 영화";

	public static void main(String[] args) {
		String b1 = "트로이";
		System.out.println("Movie : " + b1);
		{
			String b2 = "우주전쟁";
			System.out.println("Movie : " + b2);
			int i = 0;

			for (int j = 0; j < 5; j++) {
				// j는 블럭안에서만 유지된다.
			}
			// System.out.println("j : " + j);
			for (i = 0; i < 5; i++) {
				// i는 외부에 선언되어 있다.
			}
			System.out.println("i : " + i); // i:5
		}
		System.out.println("Movie : " + b1);
		// System.out.println("Movie : " + b2);
	}
}
