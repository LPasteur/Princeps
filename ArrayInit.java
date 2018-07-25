package ch3;

import java.util.Scanner;

public class ArrayInit {

	public static void main(String[] args) {
		int [] num = new int[5];
		int [] num1 = {10,20,30,40,50};
		int [] num2 = new int[] {10,20,30,40,50};
		for(int value : num) {         // 이 반복문은 단순히 첫번째 원소부터 마지막 원소까지 차례대로 원소의 값을 꺼내어 처리하는 경우 편리함
			System.out.println(value);
		}
		for(int i=0; i<num2.length; i++) {       // length를 사용하면 배열이 갯수를 알지 않아도 되고, 배열을 수정한 경우에도 코드를 잘못넣지 않음
			System.out.println(num2[i]);
		}
		Scanner input = new Scanner(System.in);
		int size;
		int max=0;
		size = input.nextInt();
		System.out.println("size : " + size);
		int [] num3 = new int[size];
		for(int i=0; i<num3.length; i++) {
			
		}
	}

}
