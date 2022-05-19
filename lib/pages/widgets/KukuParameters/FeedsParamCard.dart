import 'package:flutter/material.dart';
// import 'package:shamba_smart/pages/widgets/lineChart.dart';
import 'package:shamba_smart/pages/widgets/switch.dart';

class FeedsCard extends StatefulWidget {
  const FeedsCard({
    Key? key,
  }) : super(key: key);

  @override
  State<FeedsCard> createState() => _FeedsCardState();
}

class _FeedsCardState extends State<FeedsCard> {
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
                const Text('Feeds',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      // fontWeight: FontWeight.bold,
                    )),
                //* Icon
                Image.asset('assets/icons/feeds.png')
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
              children: const <Widget>[
                //* text
                Text('No actions',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      // fontWeight: FontWeight.bold,
                    )),
                //* Icon
                Icon(
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
                const Text('Feeds',
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
