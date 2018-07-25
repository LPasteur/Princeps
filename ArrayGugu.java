package ch3;

public class ArrayGugu {

	public static void main(String[] args) {
		int[][] gugudan = new int[9][8];
		for(int i=0; i<gugudan.length; i++) {
			for(int j=0; j<gugudan[i].length; j++) {
				gugudan[i][j] = (j+2)*(i+1);
				System.out.print((j+2)+"X"+(i+1)+"="+gugudan[i][j]+"\t");
			}
			System.out.println();
		}
	}
}
