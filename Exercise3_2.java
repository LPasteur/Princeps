package ch3;

public class Exercise3_2 {

	public static void main(String[] args) {
		double sum = 0.0;
		double d[] = { 1.0, 2.3, 3.4, 5.5 };
/*		for(int i=0; i<d.length; i++) {
			sum += d[i];
		}*/
		
//		while¹®
/*		int i=0;
		while(i<d.length) {
			sum += d[i];
			i++;
		}*/
		
//		do~while¹®
/*		int i=0;
		do {
			sum += d[i];
			i++;
		} while(i<d.length);*/
		
//		for-each¹®
		for(double i : d)
			sum += i;
		System.out.println(sum);
	}
}
