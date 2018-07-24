package ch3;

import java.util.Scanner;

public class ArrayMinMax {

	public static int maxValue(int[] arr) {
		int max = arr[0];
		for(int i = 0; i< arr.length; i++) {
			if(arr[i] > max) {
				max = arr[i];
			}
		}
		return max;
	}
	public static int minValue(int[] arr) {
		int min = arr[0];
		for(int i = 0; i< arr.length; i++) {
			if(arr[i] < min) {
				min = arr[i];
			}
		}
		return min;
	}
	public static void main(String[] args) {
		
		Scanner input = new Scanner(System.in);
		int [] intArr = new int[7];
		for(int i =0; i< intArr.length; i++) {
			System.out.print("정수입력:");
			intArr[i] = input.nextInt();
		}
		input.close();
		System.out.println("최소값:"+minValue(intArr));
		System.out.println("최대값:"+maxValue(intArr));
	}
}
