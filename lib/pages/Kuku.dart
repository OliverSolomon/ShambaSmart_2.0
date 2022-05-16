import 'package:flutter/material.dart';

class Kuku extends StatefulWidget {
  const Kuku({Key? key}) : super(key: key);

  @override
  State<Kuku> createState() => _KukuState();
}

class _KukuState extends State<Kuku> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.amber,
    );
  }
}
