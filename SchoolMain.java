package ch5;
class School{
	int kor = 0;
	int eng = 0;
	int tot = 0;
	
	public int hap() {
		tot = kor + eng;
		return tot;
	}
}
public class SchoolMain {

	public static void main(String[] args) {
		School school = new School();
		school.kor = 90;
		school.eng = 100;
		System.out.println("hap : " + school.hap());
	}
}
