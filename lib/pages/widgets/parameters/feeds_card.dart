// Card with the Feeds parameters and animations.
// Present on dashboards that need details on feeds.

import 'package:flutter/material.dart';
// import 'package:shamba_smart/pages/widgets/lineChart.dart';
import 'package:shamba_smart/pages/widgets/switch.dart';

// ignore: must_be_immutable
class FeedsCard extends StatelessWidget {
  const FeedsCard({
    Key? key,
    required this.nameOfCard,
    required this.iconOfCard,
    required this.statusOfParam,
  }) : super(key: key);

  final String nameOfCard;
  final String iconOfCard;
  // final String valueOfParam;
  final String statusOfParam;

    
  //! values for variables
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.27,
      width: MediaQuery.of(context).size.width * 0.40,
      // color: Colors.green,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(228, 55, 211, 1),
        borderRadius: BorderRadius.circular(16),
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
      child: Column(
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
                Text(
                  nameOfCard,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      // fontWeight: FontWeight.bold,
                    )),
                //* Icon
                Image.asset(iconOfCard)
              ],
            ),
          ),
          //* Actions and Notifications
          Padding(
            padding:
                // const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //* text
                Text(
                  statusOfParam,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      // fontWeight: FontWeight.bold,
                    )),
                //* Icon
                const Icon(
                  Icons.access_time,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          //* Toggle
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 30, 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                mySwitch(),
                //* text
                const Text('Off',
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
