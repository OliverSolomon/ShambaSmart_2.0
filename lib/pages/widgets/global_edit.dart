// Row 2 on the application. Has Home and Edit widgets.

import 'package:flutter/material.dart';

class GlobalEdit extends StatefulWidget {
  const GlobalEdit({
    Key? key,
  }) : super(key: key);

  @override
  State<GlobalEdit> createState() => _GlobalEditState();
}

class _GlobalEditState extends State<GlobalEdit> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        //Home Intro text
        Column(
          children: <Widget>[
            const Text("Home",
                textAlign: TextAlign.center,
                // overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Color.fromRGBO(249, 119, 47, 1),
                    fontSize: 22,
                    fontWeight: FontWeight.bold)),
            //* Demarkation
            SizedBox(
              height: 3.0,
              width: 40.0,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: Colors.blue[400],
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
          ],
        ),
        //* Edit button
        Row(
          children: const <Widget>[
            //* text
            Text('Edit',
                textAlign: TextAlign.center,
                // overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Color.fromRGBO(249, 119, 47, 1),
                  fontSize: 16,
                  // fontWeight: FontWeight.bold,
                )),
            //* Icon
            Icon(
              Icons.edit,
              color: Color.fromRGBO(249, 119, 47, 1),
              size: 16,
            ),
          ],
        ),
      ],
    );
  }
}
