import 'package:example/home/creator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OnlineProviderDemo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePageCreator(title: "HomePage").build(),
    );
  }
}
