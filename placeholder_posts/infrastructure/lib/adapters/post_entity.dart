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

  PostEntity({this.id, this.userId, this.title, this.body});

  @override
  String toString() {
    return 'PostEntity{userId: $userId, id: $id, title: $title, body: $body}';
  }
}