import 'dart:async';

class UserViewModel {
  final _forenameStreamController = StreamController<String>();
  Stream<String> get forenameStream => _forenameStreamController.stream;
  set forename(String value) {
    _forenameStreamController.sink.add(value);
    _greetingStreamController.sink.add('Hello $value!');
  }

  final _surnameStreamController = StreamController<String>();
  Stream<String> get surnameStream => _surnameStreamController.stream;
  set surname(String value) => _surnameStreamController.sink.add(value);

  final _greetingStreamController = StreamController<String>();
  Stream<String> get greetingStream => _greetingStreamController.stream;

  void dispose() {
    _forenameStreamController.close();
    _surnameStreamController.close();
    _greetingStreamController.close();
  }
}
