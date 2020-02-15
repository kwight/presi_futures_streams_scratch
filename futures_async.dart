void futuresAsync() async {
  // var demo = await Future(() => throw Exception);

  // print(demo);

  try {
    var demo = await Future(() => 5);
    // var demo = await Future(() => throw FormatException);
    print('🎉  $demo');
  } catch (error) {
    print('🔥  $error');
  } finally {
    print('✅  Complete!');
  }
}
