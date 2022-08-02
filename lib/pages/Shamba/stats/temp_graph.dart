// Ammonia Parameter overview. Riute to the Ammonia card.

import 'package:flutter/material.dart';
import 'package:shamba_smart/pages/widgets/new_nav.dart';
import 'package:shamba_smart/pages/widgets/switch.dart';
import 'package:shamba_smart/pages/widgets/graph_nav.dart';
import 'package:shamba_smart/pages/widgets/bar.dart';

// import 'package:shamba_smart/pages/widgets/barrGraph.dart';

class TempGraph extends StatefulWidget {
  const TempGraph({Key? key}) : super(key: key);

  @override
  State<TempGraph> createState() => _TempGraphState();
}

class _TempGraphState extends State<TempGraph> {
  DateTimeRange dateRange = DateTimeRange(
    start:DateTime.now(),
    end: DateTime.now()
    );

    // create TimeOfDay variable
    TimeOfDay _timeOfDay = const TimeOfDay(hour: 2, minute: 42);
    // show time picker method
    void _showTimePicker() {
      showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
        ).then((value) {
          setState(() {
            _timeOfDay = value!;
            });
          });

  }


  String statName = "Temperature & Humidity";
  double monValue = 0.50;
  double tueValue = 0.28;
  double wedValue = 0.87;
  double thurValue = 0.60;
  double friValue = 0.38;
  double satValue = 0.45;
  double sunValue = 0.10;

  @override

  Widget build(BuildContext context) {

  // final start = dateRange.start;
  // final end = dateRange.end;
  final difference = dateRange.duration;


    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          title: Text(
            statName,
            style: const TextStyle(color: Color.fromRGBO(255, 86, 33, 1)),
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
        NeumorphicBar(
          width: 200,
          height: 400,
          value: monValue,
          text: 'Mon',
          color: Color.fromRGBO(0, 200, 156, 1),
        ),
        NeumorphicBar(
          width: 200,
          height: 400,
          value: tueValue,
          text: 'Tue',
          color: Color.fromARGB(234, 57, 182, 255),
        ),
        NeumorphicBar(
          width: 200,
          height: 400,
          value: wedValue,
          text: 'Wed',
          color: Color.fromRGBO(0, 200, 156, 1),
        ),
        NeumorphicBar(
          width: 200,
          height: 400,
          value: thurValue,
          text: 'Thur',
          color: Color.fromARGB(234, 57, 182, 255),
        ),
        NeumorphicBar(
          width: 200,
          height: 400,
          value: friValue,
          text: 'Fri',
          color: Color.fromRGBO(0, 200, 156, 1),
        ),
        NeumorphicBar(
          width: 200,
          height: 400,
          value: satValue,
          text: 'Sat',
          color: Color.fromARGB(234, 57, 182, 255),
        ),
        NeumorphicBar(
          width: 200,
          height: 400,
          value: sunValue,
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
                            color: const Color(0xEA39B6FF),
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              // Line(),
                              //* Row having Parameter and Parameter Icon
                              Padding(
                                padding:
                                    // const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                                    const EdgeInsets.fromLTRB(20, 10, 30, 0),
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
                              Row(
                                  mainAxisAlignment:MainAxisAlignment.spaceAround,
                                  children: <Widget> [
                                    IconButton(
                                      icon: const Icon(Icons.calendar_month_outlined),
                                      iconSize: 30.0,
                                      color: Colors.white,
                                      onPressed: pickDateRange,),
                                    IconButton(
                                      icon: const Icon(Icons.watch_later_outlined),
                                      iconSize: 30.0,
                                      color: Colors.white,
                                      onPressed: _showTimePicker,)
                                      ],
                                ),
                              //* Toggle
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 15, 0),
                                child: RichText(
                                    text: TextSpan(
                                        text: "Daily at  ${_timeOfDay.format(context)}",
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                        children: <TextSpan>[
                                      TextSpan(
                                          text: " for ${difference.inDays} days",
                                          style: const TextStyle(
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
  Future pickDateRange() async {
    DateTimeRange? newDateRange = await showDateRangePicker(
      context: context, 
      initialDateRange: dateRange,
      firstDate: DateTime(2022), 
      lastDate: DateTime(2100)
      );

      if  (newDateRange == null) return;

      setState(() {
        dateRange = newDateRange;
      });
  }

}
