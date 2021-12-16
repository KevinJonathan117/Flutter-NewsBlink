import 'dart:convert';

import 'package:http/http.dart';
import 'package:news_blink/models/news.dart';

class NewsApiProvider {
  Future<List<News>> fetchNewsList() async {
    List<News> tempNews = [];

    try {
      Response response = await get(
        Uri.parse("https://jsonplaceholder.typicode.com/posts"),
      );
      for (var i in jsonDecode(response.body)) {
        tempNews.add(News.fromJson(i));
      }
      return tempNews;
    } catch (e) {
      return [];
    }
  }
}