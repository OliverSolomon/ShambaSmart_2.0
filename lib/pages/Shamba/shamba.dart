// This is a dashboard for all Shamba parametres, i.e Humidity, Temperature, light

import 'package:flutter/material.dart';
import 'package:shamba_smart/pages/widgets/new_nav.dart';
import 'package:shamba_smart/pages/widgets/global_top.dart';
import 'package:shamba_smart/pages/widgets/parameters/ammonia_card.dart';
import 'package:shamba_smart/pages/widgets/parameters/feeds_card.dart';
import 'package:shamba_smart/pages/widgets/parameters/temp_card.dart';
import 'package:shamba_smart/pages/widgets/parameters/lights_card.dart';
import 'package:shamba_smart/pages/Shamba/stats/shamba_graph.dart';

class Shamba extends StatefulWidget {
  const Shamba({Key? key}) : super(key: key);

  @override
  State<Shamba> createState() => _ShambaState();
}

class _ShambaState extends State<Shamba> {
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
                    const Text("My Shamba",
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
            //* CARDS
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //? Cards Holder
                  Column(
                    children: <Widget>[
                      //! Start of First card
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FeedsGraph()),
                            );
                          },
                          child: const AmmoniaCard()),
                      // division
                      const SizedBox(
                        height: 20.0,
                      ),

                      //! Start of Second Card
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FeedsGraph()),
                            );
                          },
                          child: const FeedsCard())
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      //! Start of Third - 1 Box
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FeedsGraph()),
                            );
                          },
                          child: const TempCard()),
                      // division
                      const SizedBox(
                        height: 20.0,
                      ),

                      //! Start of Forth - 2 Card
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FeedsGraph()),
                            );
                          },
                          child: LightsCard(), )
                          // LightsCard("Light", "assets/icons/lights.png", "67 %", "Off"))
                    ],
                  )
                ]),
          ]),
        ),
      ),
      bottomNavigationBar: const Nav(),
    );
  }
}
