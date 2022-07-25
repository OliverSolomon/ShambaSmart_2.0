// This is the marketplace

import 'package:flutter/material.dart';
import 'package:shamba_smart/pages/widgets/newNav.dart';
import 'package:shamba_smart/pages/widgets/globalTop.dart';
import 'package:shamba_smart/pages/widgets/globalEdit.dart';

class Sokoni extends StatefulWidget {
  const Sokoni({Key? key}) : super(key: key);

  @override
  State<Sokoni> createState() => _SokoniState();
}

class _SokoniState extends State<Sokoni> {
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
                    const Text("Sokoni",
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
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <
                Widget>[
              //? Cards Holder
              Column(
                children: <Widget>[
                  //! Start of First card
                  Container(
                    height: MediaQuery.of(context).size.height * 0.30,
                    width: MediaQuery.of(context).size.width * 0.40,
                    // color: Colors.green,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(29, 197, 126, 1),
                      borderRadius: BorderRadius.circular(16),
                      // image: DecorationImage(
                      //   fit: BoxFit.cover,
                      //   colorFilter: ColorFilter.mode(
                      //       Colors.black.withOpacity(0.2), BlendMode.dstATop),
                      //   image: const AssetImage(
                      //     'assets/images/farmLand.jpg',
                      //   ),
                      // ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.white,
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(-5, -5), // changes position of shadow
                        ),
                        BoxShadow(
                          color: Color.fromRGBO(21, 183, 123, .4),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(5, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 35.0),
                        //* Column inside card to help in odering elements
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            //* Row having Icon and my Shamba text
                          ],
                        )),
                  ),
                  // division
                  const SizedBox(
                    height: 20.0,
                  ),

                  //! Start of Second Card
                  Container(
                    height: MediaQuery.of(context).size.height * 0.27,
                    width: MediaQuery.of(context).size.width * 0.40,
                    // color: Colors.green,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(228, 55, 211, 1),
                      borderRadius: BorderRadius.circular(16),
                      // image: DecorationImage(
                      //   fit: BoxFit.cover,
                      //   colorFilter: ColorFilter.mode(
                      //       Colors.black.withOpacity(0.2), BlendMode.dstATop),
                      //   image: const AssetImage(
                      //     'assets/images/farmLand.jpg',
                      //   ),
                      // ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.white,
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(-5, -5), // changes position of shadow
                        ),
                        BoxShadow(
                          color: Color.fromRGBO(190, 41, 183, .4),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(5, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 35.0),
                        //* Column inside card to help in odering elements
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            //* Row having Icon and my Shamba text
                          ],
                        )),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  //! Start of Third - 1 Box
                  Container(
                    height: MediaQuery.of(context).size.height * 0.27,
                    width: MediaQuery.of(context).size.width * 0.40,
                    // color: Colors.green,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(7, 124, 190, 1),
                      borderRadius: BorderRadius.circular(16),
                      // image: DecorationImage(
                      //   fit: BoxFit.cover,
                      //   colorFilter: ColorFilter.mode(
                      //       Colors.black.withOpacity(0.2), BlendMode.dstATop),
                      //   image: const AssetImage(
                      //     'assets/images/farmLand.jpg',
                      //   ),
                      // ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.white,
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(-5, -5), // changes position of shadow
                        ),
                        BoxShadow(
                          color: Color.fromRGBO(11, 103, 152, .4),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(5, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 35.0),
                        //* Column inside card to help in odering elements
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            //* Row having Icon and my Shamba text
                          ],
                        )),
                  ),
                  // division
                  const SizedBox(
                    height: 20.0,
                  ),

                  //! Start of Forth - 2 Card
                  Container(
                    height: MediaQuery.of(context).size.height * 0.30,
                    width: MediaQuery.of(context).size.width * 0.40,
                    // color: Colors.green,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 86, 33, 1),
                      borderRadius: BorderRadius.circular(16),
                      // image: DecorationImage(
                      //   fit: BoxFit.cover,
                      //   colorFilter: ColorFilter.mode(
                      //       Colors.black.withOpacity(0.2), BlendMode.dstATop),
                      //   image: const AssetImage(
                      //     'assets/images/farmLand.jpg',
                      //   ),
                      // ),
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
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 35.0),
                        //* Column inside card to help in odering elements
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            //* Row having Icon and my Shamba text
                          ],
                        )),
                  ),
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
