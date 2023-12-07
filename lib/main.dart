import 'package:flutter/material.dart';
import 'package:haidok/screen/account/articles_screen.dart';
import 'package:haidok/screen/homepage/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: 'Nunito',
        useMaterial3: true,
      ),
      home: const LayoutScreen(page: 0),
    );
  }
}

class LayoutScreen extends StatefulWidget {
  final int page;

  const LayoutScreen({Key? key, required this.page}) : super(key: key);

  @override
  LayoutScreenState createState() => LayoutScreenState();
}

class LayoutScreenState extends State<LayoutScreen> {
  late int currentPageIndex;

  @override
  void initState() {
    super.initState();
    currentPageIndex = widget.page;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 500),
          child: <Widget>[
            Container(
              color: Colors.green,
              alignment: Alignment.center,
              child: const HomeScreen(),
            ),
            Container(
              color: Colors.green,
              alignment: Alignment.center,
              child: ArticlesScreen(),
            ),
          ][currentPageIndex],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white60,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.green[700],
        selectedIndex: currentPageIndex,
        destinations: <Widget>[
          NavigationDestination(
            selectedIcon: const Icon(
              Icons.home,
              color: Colors.white,
            ),
            icon: Icon(Icons.home_outlined, color: Colors.green[700]),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: const Icon(
              Icons.article,
              color: Colors.white,
            ),
            icon: Icon(Icons.article, color: Colors.green[700]),
            label: 'Articles',
          ),
        ],
      ),
    );
  }
}
