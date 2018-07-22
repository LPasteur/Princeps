import tensorflow as tf
matrix1 = tf.constant([[3.,3.]])    # 1x2
matrix2 = tf.constant([[2.],[2.]])  # 2x1
product = tf.matmul(matrix1, matrix2)   # matmul : 행렬곱

with tf.Session() as sess:
    result = sess.run([product])
    print(result)

with tf.Session() as sess:
    with tf.device("/gpu:1"):   # 두번째 gpu를 사용 ("/cpu:0":cpu지정   "/gpu:1":첫번째 gpu지정)
        matrix1 = tf.constant([[3.,3.]])
        matrix2 = tf.constant([[2.],[2.]])
        product = tf.matmul(matrix1, matrix2)

with tf.device("/job:ps/task:0"):
    weights = tf.Variable(1)
    biases = tf.Variable(2)
    print(tf.device("/job:ps/task:0"))

sess = tf.InteractiveSession()
x = tf.Variable([1.0,2.0])
a = tf.constant([3.0,3.0])
x.initializer.run()     # run메소드를 이용해서 'x' 초기화
sub = tf.subtract(x,a)  # x-a
print(sub.eval())
