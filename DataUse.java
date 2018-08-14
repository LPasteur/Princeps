package ch5;
class Data{
	private String name = null;
	private String season = null;
	private int age = 0;
	// setter메소드는 set으로 시작하는 메소드, getter메소드는 get으로 시작하는 메소드.
	// set+변수명의 첫 글자를 대문자로 사용하여 setName()값을 대입하는 목적이므로 리턴 타입이 void.
	public void setName(String name) {
		this.name = name;
	}
	public void setSeason(String season) {
		this.season = season;
	}
	public void setAge(int age) {
		if(age>=20 && age<=30) {
			this.age = age;
		}else {
			System.out.println("입력될 수 있는 나이는 10~30세 사이입니다.");
		}
	}
	// getter 메소드
	public String getName() {
		return name;
	}
	public String getSeason() {
		return season;
	}
	public int getAge() {
		return age;
	}
}
public class DataUse {

	public static void main(String[] args) {
		Data data = new Data();
		data.setName("왕눈이");
		data.setSeason("여름");
		data.setAge(35);
		
		System.out.println(data.getName());
		System.out.println(data.getSeason());
		System.out.println(data.getAge());
	}
}
