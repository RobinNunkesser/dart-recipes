import 'package:common/command_handler.dart';
import 'package:common/repository.dart';
import 'package:core/get_post_command_dto.dart';
import 'package:core/post_entity.dart';

class GetPostCommand implements CommandHandler<GetPostCommandDTO, String> {
  Repository<int, PostEntity> repository;

  GetPostCommand(this.repository);

  @override
  Future<String> execute({GetPostCommandDTO inDTO}) =>
      repository.retrieve(inDTO.id).then((value) => value.toString());

}