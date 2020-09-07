import 'package:http/http.dart' as http;
import 'package:infrastructure/post.dart';

class JSONPlaceholderAPI {
  var baseUrl = "https://jsonplaceholder.typicode.com";

  Future<Post> readPost(int id) async => http
      .get("$baseUrl/posts/$id")
      .then((http.Response r) => postFromJson(r.body));

  Future<Post> createPost(Post post) async => http.Client()
      .post("$baseUrl/posts",
          headers: {'Content-type': 'application/json'}, body: postToJson(post))
      .then((http.Response r) => postFromJson(r.body));

  Future<List<Post>> readAllPosts() async => http
      .get("$baseUrl/posts")
      .then((http.Response r) => postsFromJson(r.body));
}
