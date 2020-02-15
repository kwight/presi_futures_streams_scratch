void futures() {
  var demo = Future(() => 5);
  // var demo = Future.value(5);
  // var demo = Future.sync(() => 5);
  // var demo = Future.delayed(Duration(seconds: 2), () => 5);
  // var demo = Future.error(Exception('Oh dang!'));

  print(demo);
  // demo.then(print);
  // demo
  //     .then((value) => print('🎉 $value'))
  //     .catchError((value) => print('🔥 $value'))
  //     .whenComplete(() => print('✅ Complete!'));
}

outputSuccess(value) {
  print(value);
}
