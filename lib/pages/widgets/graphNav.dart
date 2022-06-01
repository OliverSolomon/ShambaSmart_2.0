import 'package:flutter/material.dart';
import 'package:shamba_smart/pages/Shamba.dart';
import 'package:shamba_smart/pages/Kuku.dart';
import 'package:shamba_smart/pages/Care.dart';
import 'package:shamba_smart/pages/Sokoni.dart';
import 'package:shamba_smart/pages/Home.dart';

class GraphNav extends StatefulWidget {
  const GraphNav({
    Key? key,
  }) : super(key: key);

  @override
  State<GraphNav> createState() => _GraphNavState();
}

class _GraphNavState extends State<GraphNav> {
  int index = 0;

  final screens = [
    const Shamba(),
    const Kuku(),
    const ShambaCare(),
    const Sokoni()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.90,
        // color: Colors.green,
        decoration: BoxDecoration(
          color: Color.fromRGBO(97, 214, 168, 1),
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(-5, -5), // changes position of shadow
            ),
            BoxShadow(
              color: Color.fromRGBO(222, 72, 31, .4),
              spreadRadius: 1,
              blurRadius: 4,
              offset: Offset(5, 5), // changes position of shadow
            ),
          ],
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // height: MediaQuery.of(context).size.height * 0.30,
            // width: MediaQuery.of(context).size.width * 1,
            // backgroundColor: Colors.amber,
            children: <Widget>[
              TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.focused)) {
                      return Colors.red;
                    }
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.green;
                    }
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.amber;
                    }
                    return null; // Defer to the widget's default.
                  }),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Kuku()),
                  );
                },
                child: Row(children: [
                  Image.asset('assets/icons/temp.png'),
                  const Text('  24°C',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ))
                ]),
              ),
              TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.focused)) {
                      return Colors.red;
                    }
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.green;
                    }
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.amber;
                    }
                    return null; // Defer to the widget's default.
                  }),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ShambaCare()),
                  );
                },
                child: Row(children: [
                  Image.asset('assets/icons/Humidity.png'),
                  const Text('  48%',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ))
                ]),
              ),
              TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.focused)) {
                      return Colors.red;
                    }
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.green;
                    }
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.amber;
                    }
                    return null; // Defer to the widget's default.
                  }),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Sokoni()),
                  );
                },
                child: Row(children: [
                  Image.asset('assets/icons/lights.png'),
                  const Text('Normal',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ))
                ]),
              ),
            ]));
  }
}
