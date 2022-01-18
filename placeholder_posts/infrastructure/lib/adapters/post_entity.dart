import 'package:core/ports/abstract_post.dart';

class PostEntity implements AbstractPost {
  @override
  String body;

  @override
  var id;

  @override
  String title;

  @override
  var userId;

  PostEntity(
      {required this.id,
      required this.userId,
      required this.title,
      required this.body});

  @override
  String toString() {
    return 'PostEntity{userId: $userId, id: $id, title: $title, body: $body}';
  }
}
