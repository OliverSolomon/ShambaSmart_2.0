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
      activeTrackColor: Colors.lightGreenAccent,
      activeColor: Colors.green,
    );
  }
}
