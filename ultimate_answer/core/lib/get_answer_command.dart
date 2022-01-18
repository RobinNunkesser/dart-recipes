import 'package:core/ports/super_computer.dart';
import 'package:core/ports/abstract_get_answer_command.dart';

class GetAnswerCommand implements AbstractGetAnswerCommand {
  SuperComputer superComputer;

  GetAnswerCommand(this.superComputer);

  @override
  Future<String> execute(String inDTO) {
    return superComputer.answer(inDTO);
  }
}
