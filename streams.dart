import 'dart:async';

streams() {
  var demo = counter();
  // var demo = counter().where((count) => count.isEven);
  // var demo = counter().first;

  print(demo);

  // await for (var count in demo) {
  //   print(count);
  // }
}

Stream<int> counter() async* {
  var a = 0;
  while (a < 10) {
    // await Future.delayed(Duration(seconds: 1));
    yield a++;
    // yield await Future.delayed(Duration(seconds: 1), () => a++);
  }
}
