package ch5;

public class Pay {
	int ppp;
	public void payRefer(Pay p) {
		p.ppp = p.ppp + 2000;
	}
	public void payValue(int y) {
		y = y + 200;
	}
}
