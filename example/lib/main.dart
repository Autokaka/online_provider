import 'package:example/root/creator.dart';
import 'package:flutter/material.dart';
import 'package:online_provider/online_provider.dart';
import 'package:example/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GlobalProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OnlineProviderDemo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: RootPageCreator().build(),
    );
  }
}
