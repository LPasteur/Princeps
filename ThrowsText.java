package ch3;
// 예외가 발생한 메소드 > 호출한 메소드 > main()메소드 > 자바가상머신 => 던진다. 'throw'
public class ThrowsText{
	
	public int divide(int x, int y) throws ArithmeticException{
		int result;
		try {
		result = x/y;    // 0으로 나누면 예외가 발생
		}catch(ArithmeticException e) {
			throw(e);
		}
		return result;
	}
	public static void main(String[] args) {
		ThrowsText x = new ThrowsText();
		for(int i=5; i>=0; i--) {
			int divide100 = x.divide(100, i);
			System.out.println("100을 " + i + "나누면 : " + divide100);
		}
	}
}
