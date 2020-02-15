void futuresAsync() async {
  // final demo = await Future(() => throw Exception);

  // print(demo);

  try {
    final demo = await Future(() => 5);
    // final demo = await Future(() => throw FormatException);
    print('🎉  $demo');
  } catch (error) {
    print('🔥  $error');
  } finally {
    print('✅  Complete!');
  }
}
