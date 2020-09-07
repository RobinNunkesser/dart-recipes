import 'package:common/command_handler.dart';
import 'package:core/get_answer_command_dto.dart';
import 'package:core/ports/super_computer.dart';

class GetAnswerCommand implements CommandHandler<GetAnswerCommandDTO, String> {
  SuperComputer superComputer;

  GetAnswerCommand(this.superComputer);

  @override
  Future<String> execute({GetAnswerCommandDTO inDTO}) {
    return superComputer.answer(inDTO.question);
  }
}
