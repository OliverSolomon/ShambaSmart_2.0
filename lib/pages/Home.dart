import 'package:flutter/material.dart';
import 'package:shamba_smart/pages/widgets/newNav.dart';
import 'package:shamba_smart/pages/widgets/globalTop.dart';
import 'package:shamba_smart/pages/widgets/globalEdit.dart';
import 'package:shamba_smart/pages/Shamba.dart';
import 'package:shamba_smart/pages/Kuku.dart';
import 'package:shamba_smart/pages/Care.dart';
import 'package:shamba_smart/pages/Sokoni.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[300],
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
          child: Column(children: <Widget>[
            //* NavBar like stuff at the top
            const GlobalTop(),
            const SizedBox(height: 30.0),
            //* <Widgets> Intro Text & Edit Button
            const GlobalEdit(),
            const SizedBox(height: 30.0),
            //* CARDS
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <
                Widget>[
              //? Cards Holder
              Column(
                children: <Widget>[
                  //! Start of First card
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Shamba()),
                      );
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.30,
                      width: MediaQuery.of(context).size.width * 0.40,
                      // color: Colors.green,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(29, 197, 126, 1),
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.2), BlendMode.dstATop),
                          image: const AssetImage(
                            'assets/images/farmLand.jpg',
                          ),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset:
                                Offset(-5, -5), // changes position of shadow
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
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const <Widget>[
                                        Text("My",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold)),
                                        Text("Shamba",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold))
                                      ]),
                                  Image.asset('assets/icons/Village.png')
                                ],
                              ),
                              //* Widget having Further details
                              const Text("No Actions Needed",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    // fontSize: 22,
                                    // fontWeight: FontWeight.bold
                                  ))
                            ],
                          )),
                    ),
                  ),
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
                            builder: (context) => const ShambaCare()),
                      );
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.27,
                      width: MediaQuery.of(context).size.width * 0.40,
                      // color: Colors.green,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(228, 55, 211, 1),
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.2), BlendMode.dstATop),
                          image: const AssetImage(
                            'assets/images/farmLand.jpg',
                          ),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset:
                                Offset(-5, -5), // changes position of shadow
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
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const <Widget>[
                                        Text("Magonjwa",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold)),
                                        Text("Detector",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold))
                                      ]),
                                  Image.asset('assets/icons/plantCare.png')
                                ],
                              ),
                              //* Widget having Further details
                              const Text("Detect Diseases",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    // fontSize: 22,
                                    // fontWeight: FontWeight.bold
                                  ))
                            ],
                          )),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  //! Start of Third - 1 Box
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Kuku()),
                      );
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.27,
                      width: MediaQuery.of(context).size.width * 0.40,
                      // color: Colors.green,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(7, 124, 190, 1),
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.2), BlendMode.dstATop),
                          image: const AssetImage(
                            'assets/images/farmLand.jpg',
                          ),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset:
                                Offset(-5, -5), // changes position of shadow
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
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const <Widget>[
                                        Text("My",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold)),
                                        Text("Kuku",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold))
                                      ]),
                                  Image.asset('assets/icons/Chicken.png')
                                ],
                              ),
                              //* Widget having Further details
                              const Text("Check on Feeds",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    // fontSize: 22,
                                    // fontWeight: FontWeight.bold
                                  ))
                            ],
                          )),
                    ),
                  ),
                  // division
                  const SizedBox(
                    height: 20.0,
                  ),

                  //! Start of Forth - 2 Card
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Sokoni()),
                      );
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.30,
                      width: MediaQuery.of(context).size.width * 0.40,
                      // color: Colors.green,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 86, 33, 1),
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.2), BlendMode.dstATop),
                          image: const AssetImage(
                            'assets/images/farmLand.jpg',
                          ),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset:
                                Offset(-5, -5), // changes position of shadow
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
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const <Widget>[
                                        Text("Sokoni",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold)),
                                        Text("Place",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold))
                                      ]),
                                  Image.asset('assets/icons/Shop.png')
                                ],
                              ),
                              //* Widget having Further details
                              const Text("Have goods to sell?",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    // fontSize: 22,
                                    // fontWeight: FontWeight.bold
                                  ))
                            ],
                          )),
                    ),
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
