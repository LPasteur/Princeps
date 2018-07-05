var sum = 0;      // 1~10까지 합 계산
for(var i=0; i<10; i++){
  sum+=i;
}
postMessage(sum);     // 합을 메시지로 전송
