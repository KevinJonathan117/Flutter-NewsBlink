class News {
  int userId = 0;
  int id = 0;
  String title = "";
  String body = "";

  News.fromJson(Map<String, dynamic> parsedJson) {
    userId = parsedJson["userId"];
    id = parsedJson["id"];
    title = parsedJson["title"];
    body = parsedJson["body"];
  }

  News({
    required this.userId,
    required this.id,
    required this.title,
    required this.body
  });
}