import 'post_entity.dart';
import 'package:infrastructure/post.dart';
import 'package:core/ports/abstract_post.dart';

extension PostMapping on Post {
  PostEntity toPostEntity() => PostEntity(
      id: this.id, userId: this.userId, title: this.title, body: this.body);
}

extension PostEntityMapping on AbstractPost {
  Post toPost() => Post(
      id: this.id, userId: this.userId, title: this.title, body: this.body);
}
