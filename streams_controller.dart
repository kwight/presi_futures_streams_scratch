import 'dart:async';

streamsController() async {
  final demo = StreamController();
  // final demo = StreamController.broadcast();

  demo.stream.listen(
    (count) => print('🐨  $count'),
    onError: (error) => print('🐨  ❌'),
    cancelOnError: true,
    onDone: () => print('🐨  ✅'),
  );
  // demo.stream.listen(
  //   (count) => print('🐶  $count'),
  //   onError: (error) => print('🐶  ❌'),
  //   onDone: () => print('🐶  ✅'),
  // );

  // demo.sink.add(5);
  // demo.sink.add(Object());
  // demo.sink.addError('WAT');
  // await demo.sink.addStream(counter());

  demo.close();
}

Stream<int> counter() async* {
  var a = 0;
  while (a < 10) {
    // await Future.delayed(Duration(seconds: 1));
    yield a++;
    // yield await Future.delayed(Duration(seconds: 1), () => a++);
  }
}
