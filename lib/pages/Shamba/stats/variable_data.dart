//* variable values in the code.

String humidityCard = "Soil Moisture";


String tempCard = "Soil Temperature";
String airCard = "Air Moisture & Humidity";
String weatherCard = "Weather Predictions";

//* card structure
class Card{
  late String nameOfCard;
  late String iconOfCard;
  late String valueOfParam;
  late String statusOfParam;

  Card(this.nameOfCard, this.iconOfCard, this.valueOfParam, this.statusOfParam);

}



    String nameOfCard = "Light";
    String iconOfCard = "assets/icons/lights.png";
    String valueOfParam = '67 %';
    String statusOfParam = "Off";
