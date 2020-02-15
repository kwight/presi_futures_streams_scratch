import 'dart:async';

streamsController() async {
  var demo = StreamController();
  demo.sink.add(counter());

  await for (var count in demo.stream) {
    print(count);
  }
}

Stream<int> counter() async* {
  var a = 0;
  while (a < 10) {
    // await Future.delayed(Duration(seconds: 1));
    yield a++;
    // yield await Future.delayed(Duration(seconds: 1), () => a++);
  }
}
