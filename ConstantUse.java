package ch5;
class Constant{
	public static final int COUNT = 1;
	public void prn() {
		for(int i=0; i<COUNT; i++)
			System.out.println("JAVA");
		for(int i=0; i<COUNT; i++)
			System.out.println("JSP");
		for(int i=0; i<COUNT; i++)
			System.out.println("Spring");
	}
}
public class ConstantUse {

	public static void main(String[] args) {
		Constant constant = new Constant();
		constant.prn();
		for(int i=0; i<Constant.COUNT; i++)
			System.out.println("Struts");
	}
}
