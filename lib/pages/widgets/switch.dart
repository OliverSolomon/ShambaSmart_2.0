// Simple Toggle Switch widget for override purposes

import 'package:flutter/material.dart';

class mySwitch extends StatefulWidget {
  @override
  _mySwitchState createState() => _mySwitchState();
}

class _mySwitchState extends State<mySwitch> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isSwitched,
      onChanged: (value) {
        setState(() {
          isSwitched = value;
          print(isSwitched);
        });
      },
      activeTrackColor: Color.fromARGB(255, 177, 255, 88),
      activeColor: Color.fromARGB(255, 255, 214, 91),
    );
  }
}
