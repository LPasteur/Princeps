package ch2;

import java.util.Scanner;

public class MenuWhile {

	public static void main(String[] args) {
		int 국어점수, 영어점수, 수학점수;
		int 국어합계=0, 영어합계=0, 수학합계=0;
		Scanner sc = new Scanner(System.in);
		입출력 : 
			while(true) {
				System.out.println("[메뉴] 입력(1) 종료(9) : ");
				int menu = sc.nextInt();
				switch(menu) {
				case 1:
					System.out.println("1.국어점수");
					국어점수 = sc.nextInt();
					국어합계 += 국어점수;
					System.out.println("2.영어점수");
					영어점수 = sc.nextInt();
					영어합계 += 영어점수;
					System.out.println("3.수학점수");
					수학점수 = sc.nextInt();
					수학합계 += 수학점수;
					break;
				case 9:
					System.out.println("국어합계 : "+국어합계+'\n'+"영어합계 : "+영어합계+'\n'+"수학합계 : "+수학합계);
					continue 입출력;
				default:
					System.out.println("숫자1 또는 9를 입력하세요");
				}
			}
	}
}
