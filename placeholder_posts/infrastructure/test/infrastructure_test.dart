import 'package:flutter_test/flutter_test.dart';
import 'package:infrastructure/json_placeholder_api.dart';
import 'package:infrastructure/post.dart';

void main() {
  test('read post', () async {
    final api = JSONPlaceholderAPI();
    var post = await api.readPost(1);
    expect(post.userId, 1);
    expect(post.id, 1);
    expect(
        post.title.startsWith("sunt aut facere repellat provident oc"), true);
    expect(
        post.body.startsWith("quia et suscipit\nsuscipit recusandae "), true);
  });

  test('read all posts', () async {
    final api = JSONPlaceholderAPI();
    var post = await api.readAllPosts();
    expect(post.length, 100);
  });

  test('create post', () async {
    final api = JSONPlaceholderAPI();
    var post = await api
        .createPost(Post(userId: 1, id: 101, title: "foo", body: "bar"));
    expect(post.userId, 1);
    expect(post.id, 101);
    expect(post.title, "foo");
    expect(post.body, "bar");
  });
}
