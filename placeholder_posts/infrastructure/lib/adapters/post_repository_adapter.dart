import 'package:core/post_entity.dart';
import 'package:explicit_architecture/explicit_architecture.dart';
import 'package:infrastructure/adapters/post_mappings.dart';
import 'package:infrastructure/json_placeholder_api.dart';

class PostRepositoryAdapter implements Repository<int, PostEntity> {
  var adaptee = JSONPlaceholderAPI();

  @override
  Future<int> create(PostEntity entity) =>
      adaptee.createPost(entity.toPost()).then((value) => value.id);

  @override
  Future<PostEntity> retrieve(int id) =>
      adaptee.readPost(id).then((value) => value.toPostEntity());

  @override
  Future<List<PostEntity>> retrieveAll() => adaptee
      .readAllPosts()
      .then((value) => value.map((e) => e.toPostEntity()).toList());

  @override
  Future<bool> delete(int id) {
    throw UnimplementedError();
  }

  @override
  Future<bool> update(int id, PostEntity entity) {
    throw UnimplementedError();
  }
}
