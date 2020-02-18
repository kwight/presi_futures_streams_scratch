import 'dart:async';
import 'dart:math';

streams() async {
  final demo = Stream.periodic(Duration(seconds: 1), (index) => '🐨').take(6);
  // final demo = counter();
  // final demo = counter().where((animal) => animal == '🐨');
  // final demo = counter().single;

  print(demo);

  // await for (var animal in demo) {
  //   print(animal);
  // }

  // final sub = demo.listen(
  //   (animal) => print(animal),
  //   onDone: () => print('✅'),
  // );
  // Future.delayed(Duration(seconds: 3), () {
  //   sub.pause();
  //   print('🛑');
  // });
  // Future.delayed(Duration(seconds: 6), () {
  //   sub.resume();
  //   print('👍');
  // });
}

Stream<String> counter() async* {
  var a = 0;
  while (a < 6) {
    // await Future.delayed(Duration(seconds: 1));
    yield Random().nextBool() ? '🐶' : '🐨';
    a++;
  }
}
