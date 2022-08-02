// Top Information Bar with Name of page and user avatar.

import 'package:flutter/material.dart';

class GlobalTop extends StatefulWidget {
  const GlobalTop({
    Key? key,
  }) : super(key: key);

  @override
  State<GlobalTop> createState() => _GlobalTopState();
}

class _GlobalTopState extends State<GlobalTop> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // Logo
        RichText(
            text: const TextSpan(
                text: "Shamba",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(29, 197, 126, 1),
                ),
                children: <TextSpan>[
              TextSpan(
                  text: " Smart",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(249, 119, 47, 1),
                  ))
            ])),
        //Avatar
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // color: Color.fromRGBO(51, 255, 236, 1),
              color: Colors.blue[400],
              // boxShadow: [BoxShadow(color: Colors.green, spreadRadius: 3),],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
            child: Image.asset('assets/icons/Avatar-5.png'))
      ],
    );
  }
}
