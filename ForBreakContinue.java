package ch3;

public class ForBreakContinue {

	public static void main(String[] args) {
		for(int i=1; i<5; ++i) {
			if(i==2) {
				break;
			}
			System.out.println(1+"*");     // 1*
		}
		
		for(char a='A'; a<='Z'; ++a) {
			System.out.print(a+":");
			for(char b='A'; b<='Z'; ++b) {
				System.out.print(b+"");
			}
			System.out.println();
		}
		
		for(char a='A'; a<='Z'; ++a) {
			System.out.print(a+":");
			for(int i=0; i<a-65; i++) {      // 앞의 공백넣기
				System.out.print(" ");
			}
			for (char b=a; b<='Z'-(a-65); ++b) {      // 알파벳 자르기
				System.out.print(b+"");
			}
			System.out.println();
		}
	}
}
