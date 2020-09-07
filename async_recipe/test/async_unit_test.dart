import 'package:async_recipe/async_example.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('test async', () async {
    var result = await AsyncExample().asyncMethodWithReturn();
    expect(result, 42);
  });
}
