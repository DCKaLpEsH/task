import 'package:flutter/material.dart';
import 'package:pinterest/ui/feed_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Pinterest Clone",
      debugShowCheckedModeBanner: false,
      home: FeedPage(),
    );
  }
}
