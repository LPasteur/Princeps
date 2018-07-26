package ch3;

public class ExceptionTest {

	public static void main(String[] args) {
		String language[] = {"java", "jsp", "EJB"};
		int i = 0;
		while(i<language.length) {   // 배열의 원소 갯수만큼 반복한다.
			try {
			System.out.println(language[i]);
			}catch(ArrayIndexOutOfBoundsException e) {
				System.out.println("배열의 인덱스를 다시 설정합니다.");
			}finally {
				System.out.println("언제나 출력되는 부분입니다.");
			}
			i++;
		}
	}
}
