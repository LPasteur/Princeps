package ch4;

public class Shoes {
	int size;
	String color;
	String name;
	int price;

	public Shoes() {
		size = 265; name = "";
	}
	
	public Shoes(String a, int b) {
		name = a; price = b;
	}
	
	public void protect(){
		System.out.println("발을 보호한다.");
	}
	
	public static void main(String[] args) {
		Shoes A = new Shoes();
		A.size = 270;
		A.color = "black";
		A.name = "teva";
		A.price = 69000;
		A.protect();
		System.out.println("신발이름 : " + A.name + "\n" + "신발가격 : " + A.price + "\n" + "신발크기 : " + A.size);
		System.out.println(new Shoes("ab",30000));
		System.out.println(new Shoes());
	}
}
