package ch3;

public class ReturnArray {
	static int[] makeArray() {         // ������ ���� �迭 ����
		int temp[] = new int[4];        // �迭 ����
		for(int i=0; i<temp.length; i++)
			temp[i] = i;          // �迭 �ʱ�ȭ
		return temp;              // �迭 ���� (makeArray()�� �����ص� ������ �迭�� �Ҹ���� ����)
	}
	public static void main(String[] args) {
		int intArray[];           // �迭 ���۷��� ���� ����
		intArray = makeArray();         // �޼ҵ尡 ������ �迭 ���� (intArray�� makeAttay()�� ������ �迭�� ����Ŵ)
		for(int i=0; i<intArray.length; i++)
			System.out.print(intArray[i] + " ");
	}
}