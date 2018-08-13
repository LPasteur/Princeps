package ch5;

public class AvgTest {
	public int getAvg() {
		System.out.println("값을 두개 이상 입력해 주세요");
		return 0;
	}
	// 메소드 오버로딩
	public int getAvg(float i,float j) {
		return ((int)i+(int)j)/2;
	}
	public int getAvg(int i, int j,int k) {
		return (i+j+k)/3;
	}
	public int getAvg(int i, int j, int k, int l) {
		return (i+j+k+l)/4;
	}
	// return type은 메소드를 구분하는 조건이 아니다.
/*  public float getAcg(){
		return 0.0f;
    }   */
	public static void main(String[] args) {
		AvgTest st = new AvgTest();
		System.out.println(st.getAvg());
		System.out.println(st.getAvg(10,20));
		System.out.println(st.getAvg(10.5f,20.5f));
		System.out.println(st.getAvg(10,20,30));
		System.out.println(st.getAvg(10,20,30,40));
	}
}
