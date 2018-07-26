package ch3;

public class Exercise3_8 {

	public static void main(String[] args) {
		String s = "123";
		try {
			int n = Integer.parseInt(s);
			n++;
			System.out.println(n);
		}
		catch(NumberFormatException e){
			System.out.println(s + "를 정수로 변환할 수 없습니다.");
		}
		finally {
			System.out.println("계산을 끝냅니다.");
		}
	}

}
