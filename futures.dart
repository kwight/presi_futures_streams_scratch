void futures() {
  final demo = Future(() => 5);
  // final demo = Future.value(5);
  // final demo = Future.sync(() => 5);
  // final demo = Future.delayed(Duration(seconds: 2), () => 5);
  // final demo = Future.error(Exception('Oh dang!'));

  print(demo);
  // demo.then(print);
  // demo
  //     .then((value) => print('🎉 $value'))
  //     .catchError((value) => print('🔥 $value'))
  //     .whenComplete(() => print('✅ Complete!'));

  // print('end of futures() function');
}
