import 'package:flutter/material.dart';

class cardElement {
  late String text;
  late String author;
  late Widget icon;
  late String route;

  // cardElement({this.text, this.author})
  cardElement(String text, String author, Widget icon, String route) {
    this.text = text;
    this.author = author;
    this.icon = icon;
    this.route = route;
  }
  // Another way to work with constructors
  // cardElement({String text, String author}) {
  //   this.text = text;
  //   this.author = author;
  // }
  //while using the above method, it doesn't matter the order of your parameters.

}
