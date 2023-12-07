import 'package:flutter/material.dart';
import 'package:haidok/components/card.dart';
import 'package:haidok/model/dummy_articles.dart';

class ArticlesScreen extends StatelessWidget {
  ArticlesScreen({Key? key}) : super(key: key);

  final List<Articles> articles = articlesData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Semua Artikel',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.left,
        ),
        backgroundColor: Colors.green[800],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(20),
            child: Cards(maxArticle: articles.length),
          ),
        ],
      ),
    );
  }
}
