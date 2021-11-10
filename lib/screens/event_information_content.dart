import 'package:flutter/cupertino.dart';

class EventInformationContent{

  //Variables for the date and location of the events. In the future there value -
//will be substitute with the DB values for each events info
  var _teams = 'Team 1 vs Team 2';
  String _date = 'Monday\nAugust 27 - 6:00pm ';
  String _location = 'Coliseo de Mayaguez, Mayaguez 00680';
  Image _eventImage = Image.asset('images/event2.jpg',
      height: 200, width: 500, fit: BoxFit.fill);

  String getTeam(){
    return _teams;
  }

  String getDate(){
    return _date;
  }

  String getLocation(){
    return _location;
  }

  Image getImage(){
    return _eventImage;
  }
}