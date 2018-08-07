package ch4;

import java.util.Scanner;

class Phone1 {
	private String name, tel;

	public Phone1(String name, String tel) {
		this.name = name;
		this.tel = tel;
	}

	public String getName() {
		return name;
	}

	public String getTel() {
		return tel;
	}
}

public class PhoneManager {

	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		System.out.print("인원수>>");
		int num = in.nextInt();
		Phone1[] phone1 = new Phone1[num];
		for (int i = 0; i < num; i++) {
			System.out.print("이름과 전화번호(번호는 연속적으로 입력)>>");
			phone1[i] = new Phone1(in.next(),in.next());
			System.out.println(phone1[i].getName()+phone1[i].getTel());
		}
		System.out.println("저장되었습니다...");
		for (int i = 0; i < num; i++) {
			System.out.print("검색할 이름>>");
			String a = in.next();
			if (a.equals(phone1[i].getName())) {
				System.out.println(a + "의 번호는 " + phone1[i].getTel() + "입니다.");
				continue;
			} else if (a.equals("exit")) {
				System.out.println("프로그램 종료");
				break;
			} else {
				System.out.println(a + "이 없습니다.");
				continue;
			}
		}
		in.close();
	}
}
