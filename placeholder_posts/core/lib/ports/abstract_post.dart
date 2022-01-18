abstract class AbstractPost {
  int userId;
  int id;
  String title;
  String body;

  AbstractPost(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});
}
