package ch4;

public class Book1 {
		String title;
		String author;
		
		void show() {System.out.println(title + " " + author);}
		
		public Book1() {
			this("","");
			System.out.println("1생성자 호출");
		}

		public Book1(String title) {
			this(title, "작자미상");
			System.out.println("2생성자 호출");
		}
		
		public Book1(String title, String author) {
			this.title = title;
			this.author = author;
			System.out.println("3생성자 호출");
		}
		
		public static void main(String [] args) {
			Book1 javaBook = new Book1("Java", "황기태");
			Book1 bible = new Book1("Bible");
			Book1 emptyBook = new Book1();
			
//			javaBook.show();
//			bible.show();
			emptyBook.show();
	}

}
