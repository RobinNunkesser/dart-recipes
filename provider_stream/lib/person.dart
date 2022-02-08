class Person {
  Person({required this.name, required this.initialAge});

  final String name;
  final int initialAge;

  Stream<String> get age async* {
    var i = initialAge;
    while (i < 85) {
      await Future.delayed(const Duration(seconds: 1), () {
        i++;
      });
      yield i.toString();
    }
  }
}
