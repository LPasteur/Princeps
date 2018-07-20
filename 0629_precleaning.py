korean2number = {
    '공' : '0',
    '일' : '1',
    '이' : '2',
    '삼' : '3',
    '사' : '4',
    '오' : '5',
    '육' : '6',
    '칠' : '7',
    '팔' : '8',
    '구' : '9',
    ' ' : '',
    '-' : '',
    '\n' : ''
}
def preprocess(phonenumber):
    for key, value in korean2number.items():    # korean2number의 딕셔너리를 key와 value로 구분
        phonenumber = phonenumber.replace(key,value)    # phonenumber = korean2number의 key를 value로 바꾼 값
    return phonenumber    # phonenumber를 반환
with open('./phonenumber.txt','r') as input_file:    # phonenumber.txt를 읽음
    with open("./phonenumber_preprocessed.txt","w") as out_file:    # phonenumber_preprocessed.txt를 씀
        phonenumber_list = [
            preprocess(line)
            for line in input_file.readlines()
        ]    # phonenumber_list = input_file의 모든값을 읽어오기
        for phonenumber in phonenumber_list:    # phonenumber_list를 phonenumber로 뽑아내고 out_file로 출력
            out_file.write(phonenumber + '\n')
