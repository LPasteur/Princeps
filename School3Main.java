package ch5;
class School3{
	int kor = 0;
	int eng = 0;
	int tot = 0;
	// 기본생성자
	public School3() {
	}
	// 인수를 받는 생성자
	public School3(int kor, int eng) {
		this.kor = kor;
		this.eng = eng;
	}
	public int hap() {
		tot = kor + eng;
		return tot;
	}
}
public class School3Main {

	public static void main(String[] args) {
		School3 school3 = new School3();
		school3.eng = 90;
		school3.kor = 80;
		System.out.println(school3.hap());
		
		School3 school33 = new School3(90,100);
		System.out.println(school33.hap());
	}
}
