import 'package:explicit_architecture/explicit_architecture.dart';
import 'ports/abstract_get_post_command.dart';
import 'ports/abstract_post.dart';
import 'ports/abstract_post_id.dart';

class GetPostCommand implements AbstractGetPostCommand {
  Repository<int, AbstractPost> repository;

  GetPostCommand(this.repository);

  @override
  Future<String> execute({AbstractPostId inDTO}) =>
      repository.retrieve(inDTO.id).then((value) => value.toString());
}