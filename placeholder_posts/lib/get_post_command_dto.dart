import 'package:core/ports/abstract_post_id.dart';

class GetPostCommandDTO implements AbstractPostId {
  @override
  int id;

  GetPostCommandDTO(this.id);
}