package ch2;

public class TypeConversion {
	public static void main(String[] args) {
	byte b = 127;
	int i = 100;
	System.out.println(b+i);    // b가 int타입으로 자동 변환
	System.out.println(10/4);
	System.out.println(10.0/4);   // 4가 자동으로 4.0이 됨
	System.out.println((char)0x12340041);
	System.out.println((byte)(b+i));
	System.out.println((int)2.9+1.8);   // int가 있는 숫자만 소수점 버림
	System.out.println((int)(2.9+1.8));
	System.out.println((int)2.9+(int)1.8);
	}
}
