function sleep(delay){
  var start = new Date().getTime();
  while(new Date().getTime() < start + delay);
}
self.addEventListener('message',function(e){
  console.log(e.data);
});
