class DeepThought {
  Future<int> provideAnswer() async {
    await Future.delayed(Duration(seconds: 1), () {});
    return 42;
  }
}
