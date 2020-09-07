class PostEntity {
  PostEntity({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  @override
  String toString() {
    return 'PostEntity{userId: $userId, id: $id, title: $title, body: $body}';
  }
}