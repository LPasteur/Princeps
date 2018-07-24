package ch3;

public class CheckTimePurpose {

	public static void main(String[] args) {
		int n=0;
		while(true) {
			n++;
			if(n>=20) break;
			if(n%3==0) continue;
			System.out.print(n+" ");
		}

	}

}
