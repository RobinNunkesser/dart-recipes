import 'package:common_ports/common_ports.dart';
import 'package:infrastructure/adapters/post_mappings.dart';
import 'package:infrastructure/json_placeholder_api.dart';
import 'package:core/ports/abstract_post.dart';

class PostRepositoryAdapter implements CrudRepository<int, AbstractPost> {
  var adaptee = JSONPlaceholderAPI();

  @override
  Future<int> create(AbstractPost entity) =>
      adaptee.createPost(entity.toPost()).then((value) => value.id);

  @override
  Future<AbstractPost> retrieve(int id) =>
      adaptee.readPost(id).then((value) => value.toPostEntity());

  @override
  Future<List<AbstractPost>> retrieveAll() => adaptee
      .readAllPosts()
      .then((value) => value.map((e) => e.toPostEntity()).toList());

  @override
  Future<bool> delete(int id) {
    throw UnimplementedError();
  }

  @override
  Future<bool> update(int id, AbstractPost entity) {
    throw UnimplementedError();
  }
}
