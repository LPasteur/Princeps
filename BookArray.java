package ch4;

import java.util.Scanner;

class Book2 {
	String title, author;
	public Book2(String title, String author) {
		this.title = title;
		this.author = author;
	}
}
public class BookArray {
	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		Book2 [] book2 = new Book2[2];
		for(int i=0; i<book2.length; i++) {
			System.out.print("제목>>");
			String title = in.nextLine();
			System.out.print("저자>>");
			String author = in.nextLine();
			book2[i] = new Book2(title, author);
		}
		for(int i=0; i<book2.length; i++)
			System.out.print("(" + book2[i].title + ", " + book2[i].author + ")");
		in.close();
	}

}
