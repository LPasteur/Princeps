package ch2;

public class ScoreArgs {

	public static void main(String[] args) {
		int kor, eng, mat;
		int sum = 0;
		
		kor = Integer.parseInt(args[0]);
		eng = Integer.parseInt(args[1]);
		mat = Integer.parseInt(args[2]);

		sum = kor + eng + mat;
		System.out.println("รัมก : "+sum);
	}

}
