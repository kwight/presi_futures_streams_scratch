Future<void> futuresAsync() async {
  var demo = await Future(() => 5);
  demo++;
  print(demo);

  // try {
  //   // var demo = await Future(() => 5);
  //   var demo = await Future(() => throw Exception);
  //   demo++;
  //   print('🎉  $demo');
  // } catch (error) {
  //   print('🔥  $error');
  // } finally {
  //   print('✅  Complete!');
  // }
}
