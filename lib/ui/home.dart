import 'package:flutter/material.dart';
import 'package:news_blink/models/news.dart';
import 'package:news_blink/resources/repository.dart';
import 'package:news_blink/ui/details.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  _HomeUIState createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  List<News> _allNews = [];

  @override
  void initState() {
    super.initState();
    getNewsData();
  }

  Future<void> getNewsData() async {
    _allNews = await repository.fetchNewsList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Latest News"),
          centerTitle: true,
          elevation: 0,
        ),
        body: ListView.builder(
            itemCount: _allNews.length,
            itemBuilder: (context, index) {
              if (_allNews.isNotEmpty) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: () {},
                    contentPadding: const EdgeInsets.all(25),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(_allNews[index].title, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                      ],
                    ),
                    leading: const Icon(Icons.book),
                  ),
                );
              }
              return const Center(child: CircularProgressIndicator());
            }));
  }
}
