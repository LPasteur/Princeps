package ch5;
class Person1{
	String name;
	String id = "aaa";
	public Person1(String name) {
		this.name = name;
	}
}
class Student2 extends Person1{
	String grade = "A";
	String department = "IT";
	public Student2(String name) {
		super(name);
	}
}
public class UpcastingUse {

	public static void main(String[] args) {
		Person1 p;
		Student2 s = new Student2("홍길동");
		p = s; // 업캐스팅(upcasting)
		System.out.println(s.grade);
		System.out.println(s.department);
		System.out.println(p.name);
		System.out.println(p.id);
	}
}
