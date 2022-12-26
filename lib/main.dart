import 'package:flutter/material.dart';
import 'package:news/ui/home.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Home.routeName:(_)=>Home(),
      },
      initialRoute: Home.routeName,

    );
  }
}
