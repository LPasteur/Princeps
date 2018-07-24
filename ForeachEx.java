package ch3;

public class ForeachEx {

	public static void main(String[] args) {
		int [] n = {1,2,3,4,5};
		int sum=0;
		for(int k : n) {
			System.out.print(k + " ");
			sum += k;
		}
		System.out.println("합은 " + sum);
		
		String f[] = {"사과", "배", "바나나", "체리", "딸기", "포도"};
		for(String s : f)
			System.out.print(s + " ");
		
		int a[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
		int sum1=0;
		for(int b : a)
			sum1 += b;
		System.out.println(sum1);
	}
}
