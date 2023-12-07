import 'package:flutter/material.dart';
import 'package:haidok/model/dummy_articles.dart';
import 'package:haidok/screen/account/article_screen.dart';

class Cards extends StatefulWidget {
  final int maxArticle;

  const Cards({Key? key, required this.maxArticle}) : super(key: key);

  @override
  CardsState createState() => CardsState();
}

class CardsState extends State<Cards> {
  final List<Articles> articles = articlesData;
  late int maxArticle;

  @override
  void initState() {
    super.initState();
    maxArticle = widget.maxArticle;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: articles.sublist(0, maxArticle).map((article) {
      return Card(
        color: Colors.green[50],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        key: article.key,
        child: Container(
          padding: const EdgeInsets.fromLTRB(5, 8, 18, 18),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  article.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  article.description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    key: ValueKey(article.key),
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        surfaceTintColor: Colors.green[200],
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.green[800],
                        padding: const EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ArticleScreen(
                            title: article.title,
                            description: article.description,
                          ),
                        ),
                      );
                    },
                    child: const Text('Read More'),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }).toList());
  }
}
