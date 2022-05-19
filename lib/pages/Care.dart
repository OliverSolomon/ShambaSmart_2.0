import 'package:flutter/material.dart';
import 'package:shamba_smart/pages/widgets/newNav.dart';
import 'package:shamba_smart/pages/widgets/globalTop.dart';
import 'package:shamba_smart/pages/widgets/globalEdit.dart';

class ShambaCare extends StatefulWidget {
  const ShambaCare({Key? key}) : super(key: key);

  @override
  State<ShambaCare> createState() => _ShambaCareState();
}

class _ShambaCareState extends State<ShambaCare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
          child: Column(children: <Widget>[
            //* NavBar like stuff at the top
            const GlobalTop(),
            const SizedBox(height: 30.0),
            //* <Widgets> Intro Text & Edit Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //Home Intro text
                Column(
                  children: <Widget>[
                    const Text("ShambaCare",
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
            ),
            const SizedBox(height: 30.0),
            //* Body
            const Center(child: Text("Your Magonjwa detetor is comung soon"))
          ]),
        ),
      ),
      bottomNavigationBar: const Nav(),
    );
  }
}
