import 'package:alertify/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data/data.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Data(),
      child: MyApp()
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}


