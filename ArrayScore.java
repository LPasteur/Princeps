package ch3;

public class ArrayScore {

	public static void main(String[] args) {
		int[][] score = {{100,100,100},
						  {20,20,20},
						  {30,30,30},
						  {40,40,40},
						  {50,50,50}};
		int koreaTotal = 0;
		int engTotal = 0;
		int mathTotal = 0;
		
		System.out.println("¹øÈ£	±¹¾î	¿µ¾î	¼öÇÐ	ÃÑÁ¡	Æò±Õ");
		System.out.println("============================================");
		
		for(int i=0; i<score.length; i++) {
			int sum=0;
			koreaTotal += score[i][0];
			engTotal += score[i][1];
			mathTotal += score[i][2];
			System.out.print((i+1) + "\t");
			for(int j=0; j<score[i].length; j++) {
				sum += score[i][j];
				System.out.print(score[i][j]+"\t");
			}
			System.out.print(sum + "\t" + sum/score[i].length);
			System.out.println();
		}
		System.out.println("ÃÑÁ¡ : " + koreaTotal + " " + engTotal + " " + mathTotal);
		System.out.println("Æò±Õ : " + koreaTotal/score.length + " " + engTotal/score.length + " " + mathTotal/score.length);
	}

}
