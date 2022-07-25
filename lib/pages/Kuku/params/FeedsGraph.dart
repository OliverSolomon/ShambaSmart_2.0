// Ammonia Parameter overview. Riute to the Ammonia card.

import 'package:flutter/material.dart';
import 'package:shamba_smart/pages/widgets/newNav.dart';
import 'package:shamba_smart/pages/widgets/switch.dart';
import 'package:shamba_smart/pages/widgets/graphNav.dart';
// import 'package:shamba_smart/pages/widgets/barrGraph.dart';

class FeedsGraph extends StatefulWidget {
  const FeedsGraph({Key? key}) : super(key: key);

  @override
  State<FeedsGraph> createState() => _FeedsGraphState();
}

class _FeedsGraphState extends State<FeedsGraph> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          title: const Text(
            "Ammonia",
            style: TextStyle(color: Color.fromRGBO(255, 86, 33, 1)),
          ),
          backgroundColor: Colors.grey[300],
          leading: IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: () => Navigator.pop(context),
            color: const Color.fromRGBO(255, 86, 33, 1),
          )),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
          child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //! NavBar like stuff at the top with the other 3 parameters
                const GraphNav(),
                //* Divider
                //! Neumorphic bar Graph
                Container(
                    height: MediaQuery.of(context).size.height * 0.40,
                    width: MediaQuery.of(context).size.width * 0.90,
                    // color: Colors.green,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
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
                    // child: AmmoniaGraph()
                    child: SizedBox()
                    ),
                //* cards with toggles
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height * 0.20,
                          width: MediaQuery.of(context).size.width * 0.42,
                          // color: Colors.green,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 150, 255, 1),
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: Offset(
                                    -5, -5), // changes position of shadow
                              ),
                              BoxShadow(
                                color: Color.fromRGBO(222, 72, 31, .4),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset:
                                    Offset(3, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              // Line(),
                              //* Row having Parameter and Parameter Icon
                              Padding(
                                padding:
                                    // const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                                    const EdgeInsets.fromLTRB(20, 30, 20, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const <Widget>[
                                    //* text
                                    Text('Schedule',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    //* Icon
                                    Text('On',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                ),
                              ),
                              //* Actions and Notifications
                              const Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                                child: Icon(Icons.calendar_month_outlined,
                                    size: 30.0, color: Colors.white),
                              ),
                              //* Toggle
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 0, 30),
                                child: RichText(
                                    text: const TextSpan(
                                        text: "Daily",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                        children: <TextSpan>[
                                      TextSpan(
                                          text: " at 8:00 am",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                          ))
                                    ])),
                              )
                            ],
                          )),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.17,
                          width: MediaQuery.of(context).size.width * 0.42,
                          // color: Colors.green,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 151, 50, 1),
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset: Offset(
                                    -5, -5), // changes position of shadow
                              ),
                              BoxShadow(
                                color: Color.fromRGBO(222, 72, 31, .4),
                                spreadRadius: 1,
                                blurRadius: 4,
                                offset:
                                    Offset(3, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              // Line(),
                              //* Row having Parameter and Parameter Icon
                              const Padding(
                                padding:
                                    // const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                                    EdgeInsets.fromLTRB(20, 30, 20, 0),
                                child: Text('Override',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                              //* Toggle
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 20, 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    mySwitch(),
                                    //* text
                                    const Text('Off',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    //* Icon
                                  ],
                                ),
                              )
                            ],
                          )),
                    ])
              ]),
        ),
      ),
      bottomNavigationBar: const Nav(),
    );
  }
}
