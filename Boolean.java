package ch2;

import java.util.Scanner;

public class Boolean {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.print("논리 연산을 입력하세요>>");
		Scanner in = new Scanner(System.in);
		boolean a = in.nextBoolean();
		String op = in.next();
		boolean b = in.nextBoolean();
		switch(op) {
		   case "and":
			   if(a=true && a==b)
				   System.out.println("true");
			   else
				   System.out.println("false"); break;
		   case "or":
			   if(a=false && a==b)
				   System.out.println("false");
			   else
				   System.out.println("true"); break;
		}
		in.close();
	}

}
