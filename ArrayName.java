package ch3;

import java.util.Scanner;

public class ArrayName {

	public static void main(String[] args) {
		char name [] = {'s','h','i','n','h','a','n','b','i','t'};
		for(int i=0; i<name.length; i++) {
			System.out.print(name[i]);
		}
		System.out.println();
		
		for(char j : name)
			System.out.print(j);
		System.out.println();
		
		String name1 = "신한빛";
		byte age = 29;
		String number = "010-5314-6236";
		boolean marriage = false;
		double weight = 63.3;
		System.out.println("이름은 "+name1+", 나이는 "+age+"세, 전화번호는 "+number+", 결혼유무는 "+marriage+", 몸무게는 "+weight+"kg 입니다.");
		
		System.out.println("이름, 나이, 전화번호, 결혼유무, 몸무게를 입력하세요.");
		Scanner in = new Scanner(System.in);
		String a = in.next();
		byte b = in.nextByte();
		String c = in.next();
		boolean d = in.nextBoolean();
		double e = in.nextDouble();
		System.out.println("이름은 "+a+", 나이는 "+b+"세, 전화번호는 "+c+", 결혼유무는 "+d+", 몸무게는 "+e+"kg 입니다.");
		in.close();
	}
}
