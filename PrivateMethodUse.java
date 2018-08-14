package ch5;
class PrivateMethod{
	public int kor = 0;
	public int eng = 0;
	public int sum = 0;
	
	private void sum() {
		sum = kor + eng;
		if(sum > 200) {
			System.out.println("점수가 200점을 초과했습니다.");
			sum = 0;
		}
		else {
			System.out.println("합계 : " + sum + " => 합계가 정상적으로 처리했습니다.");
		}
	}
	public void call_sum() {
		sum();
	}
}
public class PrivateMethodUse {

	public static void main(String[] args) {
		PrivateMethod pm = new PrivateMethod();
		pm.kor = 90;
		pm.eng = 95;
		pm.call_sum();
	}

}
