import 'package:core/post_entity.dart';
import 'package:infrastructure/post.dart';

extension PostMapping on Post {
  PostEntity toPostEntity() => PostEntity(
      userId: this.userId, id: this.id, title: this.title, body: this.body);
}

extension PostEntityMapping on PostEntity {
  Post toPost() => Post(
      userId: this.userId, id: this.id, title: this.title, body: this.body);
}
