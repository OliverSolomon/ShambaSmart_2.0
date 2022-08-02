// Card with the Weather parameters and animations.
// Present on dashboards that need details on Weather.

import 'package:flutter/material.dart';


// ignore: must_be_immutable
class WeatherCard extends StatelessWidget {
  const WeatherCard({
    Key? key,
    required this.nameOfCard,
    required this.nameOfCard2,
    required this.iconOfCard,
    required this.statusOfParam,
    required this.valueOfParam,
  }) : super(key: key);

  final String nameOfCard;
  final String nameOfCard2;
  final String iconOfCard;
  final String statusOfParam;
  final String valueOfParam;

    
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(nameOfCard,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          // fontWeight: FontWeight.bold,
                        )),
                    Text(nameOfCard2,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          // fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
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
                  valueOfParam,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w300,
                    )),
              ],
            ),
          ),
          //* Status of Weather Param
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 30, 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
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
