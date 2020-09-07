class AsyncExample {
  void asyncMethod() async {
    asyncMethodWithReturn()
        .then((value) => print('Asynchronous return $value'))
        .catchError((e) => print('Returned error $e'));
  }

  Future<int> asyncMethodWithReturn() async {
    await Future.delayed(Duration(seconds: 4), () {});
    //return Future.error(Exception("Error message"));
    return 42;
  }
}
