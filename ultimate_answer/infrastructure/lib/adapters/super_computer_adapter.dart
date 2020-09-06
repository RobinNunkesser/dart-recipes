import 'package:core/ports/super_computer.dart';
import 'package:infrastructure/deep_thought.dart';

class SuperComputerAdapter implements SuperComputer {
  DeepThought adaptee = DeepThought();

  @override
  Future<String> answer(String question) {
    return adaptee.provideAnswer().then((value) => value.toString());
  }
}
