import 'package:flutter/material.dart';

class ArticleScreen extends StatelessWidget {
  final String title;
  final String description;

  const ArticleScreen(
      {Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 500),
            child: AppBar(
              title: Text(
                title,
                style: const TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.green[800],
              leading: CircleAvatar(
                backgroundColor: Colors.green[800],
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 500),
          child: ListView(
            children: <Widget>[
              Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          title,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(description, textAlign: TextAlign.justify),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            const ShareButton(),
                            const BookmarkButton(),
                            IconButton(
                              icon: const Icon(Icons.share),
                              color: Colors.black,
                              onPressed: () {},
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class ShareButton extends StatefulWidget {
  const ShareButton({Key? key}) : super(key: key);

  @override
  ShareButtonState createState() => ShareButtonState();
}

class ShareButtonState extends State<ShareButton> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isLiked ? Icons.thumb_up_alt : Icons.thumb_up_alt_outlined,
        color: isLiked ? Colors.blue[600] : Colors.black,
      ),
      onPressed: () {
        setState(() {
          isLiked = !isLiked;
        });
      },
    );
  }
}

class BookmarkButton extends StatefulWidget {
  const BookmarkButton({Key? key}) : super(key: key);

  @override
  BookmarkButtonState createState() => BookmarkButtonState();
}

class BookmarkButtonState extends State<BookmarkButton> {
  bool isBookmarked = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isBookmarked ? Icons.bookmark : Icons.bookmark_add_outlined,
        color: isBookmarked ? Colors.yellow[600] : Colors.black,
      ),
      onPressed: () {
        setState(() {
          isBookmarked = !isBookmarked;
        });
      },
    );
  }
}
