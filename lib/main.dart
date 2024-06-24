import 'package:flutter/material.dart';

import 'BasketBallCounterApp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BasketBallCounterApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
