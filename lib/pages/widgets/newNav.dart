import 'package:flutter/material.dart';
import 'package:shamba_smart/pages/Shamba.dart';
import 'package:shamba_smart/pages/Kuku.dart';
import 'package:shamba_smart/pages/Care.dart';
import 'package:shamba_smart/pages/Sokoni.dart';
import 'package:shamba_smart/pages/Home.dart';

class Nav extends StatefulWidget {
  const Nav({
    Key? key,
  }) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
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
        height: MediaQuery.of(context).size.height * 0.10,
        color: Colors.white,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
                child: Image.asset(
                    'assets/icons/navbar/inactives/HomeInnactive.png'),
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
                    MaterialPageRoute(builder: (context) => const Shamba()),
                  );
                },
                child: Image.asset(
                    'assets/icons/navbar/inactives/farmInnactive.png'),
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
                    MaterialPageRoute(builder: (context) => const Kuku()),
                  );
                },
                child: Image.asset(
                    'assets/icons/navbar/inactives/ChickenInnactive.png'),
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
                child: Image.asset(
                    'assets/icons/navbar/inactives/plantCareInnactive.png'),
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
                child: Image.asset(
                    'assets/icons/navbar/inactives/ShopInnactive.png'),
              ),
            ]));
  }
}
