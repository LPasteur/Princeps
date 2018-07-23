package ch2;

public class VariableExample {

	public static void main(String[] args) {
		// 1) char : 문자를 표현하는 자료형으로 2byte
		char ch = 'A';    // 한 개의 문자만 대입가능
/*		char ch2 = 'AB';   // 오류남          */		
		// 2) byte, short, int, long
		int num = 100;
/*	    int num1 = 100.123;  // 실수 자료를 정수형 변수에 대입할 수 없다.    */
		long l = 100l;
	    // 3) float, double
	    // 소수점 자료형(실수형)
	    float f = 10.123f;
	    double d = 10.123;   // double형은 소수점만 표현하면 된다.
	    // 4) 논리값(true / false)을 표현하는 boolean
	    boolean b1 = true;
	    boolean b2 = false;
/*	    boolean b3 = 10;    // true//false이외 다른 값은 대입할 수 없다.    */
	    // 5) 자료의 형변환
	    char ch2 = 'A'+1;   // 2byte
	    int i2 = ch2;       // 4byte 자동형 변환(암시적, 묵시적 형변환) => 작은 공간에 있는 데이터를 큰 공간의 데이터 변수로 옮겨진다.
	    
	    double d2 = 10.1;   // 8byte
	    int i3 = (int)d2;        // 명시적(강제적) 형변환 => 소수점 데이터 손실이 발생한다.
	    int i4 = (int)10.1;      // 형변환을 하려고 하는 자료형이나 리터럴 앞에 ()소괄호 안에 자료형을 써주면 된다.
	    
	    String str = "hello";    // 문자열은 큰 따옴표를 활용한다.
	}

}
