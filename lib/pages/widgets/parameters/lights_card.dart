import 'package:flutter/material.dart';
import 'package:shamba_smart/pages/widgets/switch.dart';

class LightsCard extends StatelessWidget {
  const LightsCard({
    Key? key,
    required this.nameOfCard,
    required this.iconOfCard,
    required this.valueOfParam,
    required this.statusOfParam,
    // required this.color,
  }) : super(key: key);

  final String nameOfCard;
  final String iconOfCard;
  final String valueOfParam;
  final String statusOfParam;
  // final Color color;


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
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Text(
              valueOfParam,
                textAlign: TextAlign.center,
                style: const TextStyle(
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
                Text(
                  statusOfParam,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
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