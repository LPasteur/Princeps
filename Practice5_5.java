package ch5;

import java.util.Scanner;

interface StackInterface{
	int length();
	String pop();
	boolean push(String ob);
}

public class Practice5_5 implements StackInterface{
	int top;
	String[] stack;
	int size;

	public Practice5_5() {
		stack = new String[5];
	}

	@Override
	public int length() {
		return top + 1;		// 스택의 길이
	}

	@Override
	public String pop() {
		return stack[--top];		// 스택의 상단 데이터를 가져오는 메소드
	}

	@Override
	public boolean push(String ob) {
		if(top==5) return false;		// 데이터를 스택에 삽입하는 메소드
		else stack[top++] = ob;
		return true;
	}

	public static void main(String[] args) {
		Practice5_5 stack = new Practice5_5();
		Scanner scanner = new Scanner(System.in);
		for(int i=0; i<5; i++) {
			String input = scanner.next();
			stack.push(input);
		}
		for(int j=0; j<5; j++) {
			System.out.print(stack.pop());
		}
		scanner.close();
	}
}
