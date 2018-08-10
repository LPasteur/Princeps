package ch5;

public class SchoolProc2 {

	public void print(SchoolVO vo) {
		System.out.println("vo.name : " + vo.name);
		System.out.println("vo.kor : " + vo.kor);
		System.out.println("vo.eng : " + vo.eng);
		System.out.println("vo.tot : " + vo.tot);
		System.out.println("vo.avg : " + vo.avg);
	}
}
// SchoolVO멤버변수 초기화하고 총점, 평균 구하기. SchoolProc2객체 생성하고 print()메소드 호출하여 실행하는 SchoolUse.java코드 작성하기
