package ch5;
class Movie{
	String part = "영화";
}
class Korea extends Movie{
	String m1 = "가문의 영광";
}
class Foreign extends Movie{
	String m1 = "박물관은 살아있다.";
}
public class MovieUse {

	public static void main(String[] args) {
		Korea k = new Korea();
		System.out.println("장르 : " + k.part);
		System.out.println("제목 : " + k.m1);
		
		Foreign f = new Foreign();
		System.out.println("제목 : " + f.m1);
	}
}
