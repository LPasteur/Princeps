a="동계올림픽, 컬링, 피겨 스케이팅, 알파인 스키, 봅슬레이, 쇼트트랙"
if "컬링" not in a:print("여자")
elif "강릉" in a:print("2018")
else: print("문자열 없음!")

if "동계" not in a or "남자" not in a :print(a)
elif "평창" in a:print("2018")
elif "스키" not in a :print("알파인 스키")
else: print("문자열 없음!")

if "컬링" not in a or "알파인" not in a : print("동계올림픽")
elif "올림픽" in a and "피겨" in a : print(a*2)
else: print("문자열 없음!")
