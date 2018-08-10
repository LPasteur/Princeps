package ch5;

public class SchoolUse {

	public static void main(String[] args) {
		SchoolVO vo1 = new SchoolVO();
		vo1.name = "ȫ�浿";
		vo1.eng = 90;
		vo1.kor = 100;
		vo1.tot = 190;
		vo1.avg = 95;

		SchoolProc2 sp = new SchoolProc2();
		sp.print(vo1);
	}
}
