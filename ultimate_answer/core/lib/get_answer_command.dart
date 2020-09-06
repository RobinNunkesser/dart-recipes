import 'package:common/command_handler.dart';
import 'package:core/get_answer_command_dto.dart';
import 'package:core/ports/super_computer.dart';

class GetAnswerCommand implements CommandHandler<GetAnswerCommandDTO, String> {
  SuperComputer superComputer;

  GetAnswerCommand(this.superComputer);

  @override
  void execute(
      {GetAnswerCommandDTO inDTO,
      Function(String value) onValue,
      Function onError}) {
    superComputer
        .answer(inDTO.question)
        .then((value) => onValue(value))
        .catchError((error) => onError(error));
  }
}
