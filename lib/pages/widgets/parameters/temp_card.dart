// Card with the Temperature parameters and animations.
// Present on dashboards that need details on Temperature.


import 'package:flutter/material.dart';
// import 'package:shamba_smart/pages/widgets/lineChart.dart';
// import 'package:shamba_smart/pages/widgets/switch.dart';

class TempCard extends StatelessWidget {
  const TempCard({
    Key? key,
    required this.nameOfCard,
    required this.nameOfCard2,
    required this.iconOfCard,
    required this.valueOfParamT,
    required this.valueOfParamH,
    required this.statusOfParam,
  }) : super(key: key);

  final String nameOfCard;
  final String nameOfCard2;
  final String iconOfCard;
  final String valueOfParamT;
  final String valueOfParamH;
  final String statusOfParam;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.27,
      width: MediaQuery.of(context).size.width * 0.40,
      // color: Colors.green,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(7, 124, 190, 1),
        borderRadius: BorderRadius.circular(16),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      nameOfCard,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          // fontWeight: FontWeight.bold,
                        )),
                    Text(
                      nameOfCard2,
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
                const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //* text
                Text(
                  valueOfParamT,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      // fontWeight: FontWeight.bold,
                    )),
                //* Icon
                Text(
                  valueOfParamH,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    )),
              ],
            ),
          ),
          //* Toggle
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 30),
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
