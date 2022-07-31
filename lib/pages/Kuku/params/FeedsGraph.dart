// Ammonia Parameter overview. Riute to the Ammonia card.

import 'package:flutter/material.dart';
import 'package:shamba_smart/pages/widgets/newNav.dart';
import 'package:shamba_smart/pages/widgets/switch.dart';
import 'package:shamba_smart/pages/widgets/graphNav.dart';
import 'bar.dart';

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
                    child: Row(
              // color: Colors.red;
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        // Key for the value calibration
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 45, 0, 70),// const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget>[
              Text(
                "10 -",
                style: TextStyle(
                  color: Colors.blueGrey[300],),),
              Text(
                "5 -",
                style: TextStyle(
                  color: Colors.blueGrey[300],),),
              Text(
                "0 -",
                style: TextStyle(
                  color: Colors.blueGrey[300],),),
          ]
        )),
        const NeumorphicBar(
          width: 200,
          height: 400,
          value: 0.53,
          text: 'Mon',
          color: Color.fromRGBO(0, 200, 156, 1),
        ),
        const NeumorphicBar(
          width: 200,
          height: 400,
          value: 0.82,
          text: 'Tue',
          color: Color.fromARGB(234, 57, 182, 255),
        ),
        const NeumorphicBar(
          width: 200,
          height: 400,
          value: 0.47,
          text: 'Wed',
          color: Color.fromRGBO(0, 200, 156, 1),
        ),
        const NeumorphicBar(
          width: 200,
          height: 400,
          value: .6,
          text: 'Thur',
          color: Color.fromARGB(234, 57, 182, 255),
        ),
        const NeumorphicBar(
          width: 200,
          height: 400,
          value: 0.37,
          text: 'Fri',
          color: Color.fromRGBO(0, 200, 156, 1),
        ),
        const NeumorphicBar(
          width: 200,
          height: 400,
          value: 0.69,
          text: 'Sat',
          color: Color.fromARGB(234, 57, 182, 255),
        ),
        const NeumorphicBar(
          width: 200,
          height: 400,
          value: 0.2,
          text: 'Sun',
          color: Color.fromRGBO(0, 200, 156, 1),
        ),
      ],
            )
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
                            color: Color.fromRGBO(57, 182, 255, 0.918),
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
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    //* Icon
                                    Text('On',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
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
                                    const EdgeInsets.fromLTRB(20, 0, 15, 30),
                                child: RichText(
                                    text: const TextSpan(
                                        text: "Daily at 8:00 am",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                        children: <TextSpan>[
                                      TextSpan(
                                          text: " for 3 days",
                                          style: TextStyle(
                                            fontSize: 15,
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
                            color:Color.fromRGBO(0, 200, 156, 1),
                            // color: Color.fromRGBO(241, 156, 28, 1),
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
