import 'package:flutter/material.dart';
// import 'package:shamba_smart/pages/widgets/lineChart.dart';
import 'package:shamba_smart/pages/widgets/switch.dart';

class LightsCard extends StatefulWidget {
  const LightsCard({
    Key? key,
  }) : super(key: key);

  @override
  State<LightsCard> createState() => _LightsCardState();
}

class _LightsCardState extends State<LightsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.30,
      width: MediaQuery.of(context).size.width * 0.40,
      // color: Colors.green,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 86, 33, 1),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //* text
                const Text('Light',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      // fontWeight: FontWeight.bold,
                    )),
                //* Icon
                Image.asset('assets/icons/lights.png')
              ],
            ),
          ),
          //* Actions and Notifications
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Text('67%',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w300,
                )),
          ),
          //* Toggle
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 30, 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                mySwitch(),
                //* text
                const Text('Light',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      // fontWeight: FontWeight.bold,
                    )),
                //* Icon
              ],
            ),
          )
        ],
      ),
    );
  }
}
