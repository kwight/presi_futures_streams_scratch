import 'dart:async';

import 'dart:io' as io;

main() {
  var controller = StreamController.broadcast(
    onListen: () => print('listening'),
    onCancel: () => print('cancelled'),
  );
  var sub1 = controller.stream.listen(print);
  var sub2 = controller.stream.listen(print);
  controller.sink.add('asdfasdfasdf');
  Future(() => controller.sink.add('hello from the future!'));

  sub1.cancel();
  Future(() => sub2.cancel());
  // tappitytap();

  // var counter = hunnieCounter();
  // var evenCounter = counter.where((event) => event.isEven);
  // await for (var item in evenCounter) {
  //   print(item);
  // }

  // var controller = Stream.periodic(Duration(seconds: 1), (x) => x)
  //     .take(10)
  //     .asBroadcastStream();

  // controller.forEach(print);
  // controller.listen(print);
}

Stream<int> hunnieCounter() async* {
  var a = 0;
  while (a < 100) {
    yield a++;
  }
}

Stream<int> timedCounter({Duration interval, int maxCount}) async* {
  int i = 0;
  while (true) {
    // await Future.delayed(interval);
    yield i++;
    if (i == maxCount) break;
  }
}

Stream<int> donkey() async* {
  for (var i = 0; i < 12; i++) {
    yield 4;
  }
  yield await Future.delayed(Duration(seconds: 1), () => 3);
}

void main_streams() {
  fetchDoubles(1, 10).listen(print);
}

Stream<int> fetchDoubles(int start, int end) async* {
  for (int i = start; i <= end; i++) {
    yield await fetchDouble(i);
  }
}

Future<int> fetchDouble(int value) {
  return Future.delayed(Duration(seconds: 2), () => value * 2);
}

Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (var value in stream) {
    sum += value;
  }
  return sum;
}

void main_futures() async {
  Future<String> test = Future.delayed(Duration(seconds: 2), () => 'Hi!');
  // Future<int> test = myAsyncFunction();
  // Future<int> test = () async => 5;

  // try {
  //   await test;
  // } catch (e) {}

  test
      .then((value) {
        print('1  $value');
        return value;
      })
      .then((value) {
        print('2  $value');
        return throw FormatException();
      })
      .catchError((error) {
        print('😱  $error');
        return throw IntegerDivisionByZeroException();
      }, test: (error) => error is IntegerDivisionByZeroException)
      .then((value) {
        print('3  $value');
        return throw ('wut');
      })
      .then((value) {
        print('4  $value');
        return value;
      })
      .catchError((error) => print('🔥  $error'))
      .whenComplete(() => print('Complete!'));
}

Future<int> myAsyncFunction() {
  return Future.delayed(Duration(seconds: 2), () => 6);
}

bool testy(error) {
  return error is IntegerDivisionByZeroException ? true : false;
}

Stream tappitytap() {
  io.stdin.echoMode = false;
  var input;
  while (input != 32) {
    // leave program with [Space][Enter]
    input = io.stdin.readByteSync();
    if (input != 10) print(input); // ignore [Enter]
  }
  print('leaving!');
  io.stdin.echoMode = true;
}
