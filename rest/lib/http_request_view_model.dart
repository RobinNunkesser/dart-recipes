import 'dart:async';

class HttpRequestViewModel {
  final _resultStreamController = StreamController<String>();

  Stream<String> get resultStream => _resultStreamController.stream;

  set result(String value) => _resultStreamController.sink.add(value);

  void dispose() {
    _resultStreamController.close();
  }
}