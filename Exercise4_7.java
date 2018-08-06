package ch4;

class Person{
	private int age;
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
}
public class Exercise4_7 {

	public static void main(String[] args) {
		Person a = new Person();
		a.setAge(17);
		System.out.println(a.getAge());

	}

}
