import 'package:example/home/creator.dart';
import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RootPage"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return HomePageCreator(title: "HomePage").build();
              },
            ),
          ),
          child: Text("打开HomePage"),
        ),
      ),
    );
  }
}
