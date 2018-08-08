package ch5;

class Person {
}

class Student1 extends Person {
}

class Researcher extends Person {
}

class Professor extends Researcher {
}

public class InstanceOfEx {
	static void print(Person p) {
		if (p instanceof Person) {
			System.out.print("Person ");
		}
		if (p instanceof Student1) {
			System.out.print("Student ");
		}
		if (p instanceof Researcher) {
			System.out.print("Researcher ");
		}
		if (p instanceof Professor) {
			System.out.print("Professor ");
		}
		System.out.println();
	}

	public static void main(String[] args) {
		System.out.print("new Student() -> ");
		print(new Student1());
		System.out.print("new Researcher() -> ");
		print(new Researcher());
		System.out.print("new Professor() -> ");
		print(new Professor());			// new Professor()객체는 Person타입이기도 하고, Researcher타입, Professor타입이기도 하다.
	}
}
