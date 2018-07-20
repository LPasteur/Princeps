package ch2;

import java.util.Scanner;

public class PrintCalcResult {

	public static void main(String[] args) {
		System.out.println("부가세(상품금액의 10%)와 잔돈(키보드로 입력받은 돈 - 부가세)을 계산하여 출력하세요");
		System.out.println("받은 돈과 상품의 총액을 입력하세요");
		
		Scanner scanner = new Scanner(System.in);
		long money = scanner.nextLong();
		long total = scanner.nextLong();
		double tex = total*0.1;
		double change = money-total-tex;
		System.out.println("받은 돈 : "+money+'\n'+"상품의 총액 : "+total+'\n'+"부가세 : "+tex+'\n'+"잔돈 : "+change);
		
		scanner.close();
	}

}
