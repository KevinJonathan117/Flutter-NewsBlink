import 'package:news_blink/models/news.dart';
import 'package:news_blink/resources/API/news_api_provider.dart';

class Repository {
  final newsApiProvider = NewsApiProvider();

  Future<List<News>> fetchNewsList() => newsApiProvider.fetchNewsList();
}

Repository repository = Repository();