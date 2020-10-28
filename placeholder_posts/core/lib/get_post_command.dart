import 'package:core/get_post_command_dto.dart';
import 'package:core/post_entity.dart';
import 'package:explicit_architecture/explicit_architecture.dart';

class GetPostCommand implements Command<GetPostCommandDTO, String> {
  Repository<int, PostEntity> repository;

  GetPostCommand(this.repository);

  @override
  Future<String> execute({GetPostCommandDTO inDTO}) =>
      repository.retrieve(inDTO.id).then((value) => value.toString());
}