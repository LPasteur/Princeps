package ch3;

public class Exercise3_1 {

	public static void main(String[] args) {
		int i=0, sum=0;
/*		while(i<10) {
			i = i + 2;
			sum += i;
		}*/
/*		while(true) {
			i = i + 2;
			sum += i;
			if(i==10) break;
		}*/
		do {
			i = i + 1;
			if(i%2==1) continue;
			sum += i;
		} while(i<10);
		System.out.println(sum);
	}
}
