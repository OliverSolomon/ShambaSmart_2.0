import 'package:flutter/material.dart';
import 'package:shamba_smart/pages/Shamba.dart';
import 'package:shamba_smart/pages/Kuku.dart';
import 'package:shamba_smart/pages/Care.dart';
import 'package:shamba_smart/pages/Sokoni.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int index = 0;
  final screens = [
    // const Home(),
    const Shamba(),
    const Kuku(),
    const ShambaCare(),
    const Sokoni()
  ];

  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
        indicatorColor: Colors.amber[100],
        labelTextStyle: MaterialStateProperty.all(
          const TextStyle(
              fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey),
        ),
      ),
      child: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (index) {
          setState(() {
            this.index = index;
          });
        },
        // height:50.0,
        animationDuration: const Duration(seconds: 1),
        backgroundColor: Colors.grey[100],
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        destinations: [
          NavigationDestination(
              icon: Image.asset(
                  'assets/icons/navbar/inactives/HomeInnactive.png'),
              label: "Home",
              selectedIcon: Image.asset('assets/icons/navbar/home-active.png')),
          NavigationDestination(
              icon: Image.asset(
                  'assets/icons/navbar/inactives/farmInnactive.png'),
              label: "Shamba",
              selectedIcon: Image.asset('assets/icons/navbar/farm-active.png')),
          NavigationDestination(
              icon: Image.asset(
                  'assets/icons/navbar/inactives/ChickenInnactive.png'),
              label: "Kuku",
              selectedIcon:
                  Image.asset('assets/icons/navbar/Chicken-active.png')),
          NavigationDestination(
              icon: Image.asset(
                  'assets/icons/navbar/inactives/plantCareInnactive.png'),
              label: "Magonjwa"),
          NavigationDestination(
              icon: Image.asset(
                  'assets/icons/navbar/inactives/ShopInnactive.png'),
              label: "Shop")
        ],
      ),
    );
  }
}
