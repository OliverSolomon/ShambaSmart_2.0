// Card with the Ammonia parameters and animations.
// Present on dashboards that need details on Ammonia Levels.

import 'package:flutter/material.dart';
// import 'package:shamba_smart/pages/widgets/lineChart.dart';

class AmmoniaCard extends StatefulWidget {
  const AmmoniaCard({
    Key? key,
  }) : super(key: key);

  @override
  State<AmmoniaCard> createState() => _AmmoniaCardState();
}

class _AmmoniaCardState extends State<AmmoniaCard> {
  
  //! values for variables
  String nameOfCard = "Ammonia";
  String iconOfCard = "assets/icons/Humidity.png";
  String valueOfParam = '48 %';
  String statusOfParam = " Normal";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.30,
      width: MediaQuery.of(context).size.width * 0.40,
      // color: Colors.green,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(29, 197, 126, 1),
        borderRadius: BorderRadius.circular(16),
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
          //* Line Graph
          Image.asset('assets/icons/moistureCurve.png'),
          //* Value of Param in %
          Text(
            valueOfParam,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w300,
              )),
          //* Conditon: Normal
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
            child: RichText(
                text: TextSpan(
                    text: "Level: ",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                    children: <TextSpan>[
                  TextSpan(
                      text: statusOfParam,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ))
                ])),
          )
        ],
      ),
    );
  }
}
