package ch4;

class SampleClass {
	public int field1;
	protected int field2;
	int field3;
	/* private */ int field4;
}

public class AccessEx {

	public static void main(String[] args) {
		SampleClass s = new SampleClass();
		s.field1 = 0;
		s.field2 = 1;
		s.field3 = 2;
		s.field4 = 3;

	}

}
