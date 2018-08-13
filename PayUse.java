package ch5;

public class PayUse {

	public static void main(String[] args) {
		Pay p = new Pay();
		p.ppp = 10;
		int i = 10;
		p.payRefer(p);
		p.payValue(i);
		System.out.println(p.ppp); // 객체가 변경되어서 2010
		System.out.println(i); // 10
	}
}
/*       Call by Value        Call by Reference
매개변수         전달방식 값 복사                    레퍼런스를 넘겨줌
장점              원본 값을 보호                      기억장소 공유를 통한 기억 메모리 절약
단점              값복사로 인한 메모리 낭비       원본값 보존할 수 없다
매개변수타입    원시(기본)데이터 타입          레퍼런스(참조)타입(배열포함)     */
