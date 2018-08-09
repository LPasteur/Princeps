package ch5;

public class colorLCDExample {

	public static void main(String[] args) {
		Exercise5_5 colorLcd = new Exercise5_5(256,85);
		System.out.println(colorLcd.colorSize + "\t" + colorLcd.getSize());			// colorLcd.size => 캡슐화(정보은닉)으로 getTerm메소드를 사용하여 보이게 하기.
	}
}
