/*작성일 : 2018. 07. 16
작성자 : 홍길동
소스파일 : Hello.java*/

package ch1;

public class Hello1 {
	// 두수 합을 계산하는 sum 메소드(함수)
	public static int sum(int n, int m) {
		return n+m;
	}
	public static void main(String[] args) {
		int s;
		s = sum(20,30);
		System.out.println(s);
	}

}
