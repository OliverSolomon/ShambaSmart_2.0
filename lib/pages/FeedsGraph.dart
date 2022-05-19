import 'package:flutter/material.dart';
import 'package:shamba_smart/pages/widgets/newNav.dart';

class FeedsGraph extends StatefulWidget {
  const FeedsGraph({Key? key}) : super(key: key);

  @override
  State<FeedsGraph> createState() => _FeedsGraphState();
}

class _FeedsGraphState extends State<FeedsGraph> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          title: const Text(
            "Ammonia",
            style: TextStyle(color: Color.fromRGBO(255, 86, 33, 1)),
          ),
          backgroundColor: Colors.grey[200],
          leading: IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: () => Navigator.pop(context),
            color: const Color.fromRGBO(255, 86, 33, 1),
          )),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
          child: Column(children: const <Widget>[
            //* NavBar like stuff at the top with the other 3 parameters
            Center(child: Text("Your Magonjwa detetor is comung soon"))
            //* Neumorphic bar Graph
            //* cards with toggles
          ]),
        ),
      ),
      bottomNavigationBar: const Nav(),
    );
  }
}
