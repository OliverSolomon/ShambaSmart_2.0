import 'package:flutter/material.dart';
import 'package:shamba_smart/pages/Home.dart';
import 'package:shamba_smart/pages/Shamba.dart';
import 'package:shamba_smart/pages/Kuku.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/shamba': (context) => const Shamba(),
        '/kuku': (context) => const Kuku(),
      },
      home: const Home(),
    );
  }
}
