import 'package:flutter/material.dart';
import 'package:news_blink/ui/home.dart';

void main() {
  runApp(MaterialApp(
      title: 'News Blink',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const HomeUI(),
    ));
}
