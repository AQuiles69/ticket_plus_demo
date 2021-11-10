import 'package:flutter/cupertino.dart';

class EventSimpleDialogContent{

  var _eventInformation = 'Lorem ipsum dolor sit amet, '
      'consectetur adipiscing elit. Pellentesque laoreet volutpat'
      'lorem, et interdum justo. Sed eu ornare turpis. Sed ut purus nisl.';

  var _eventDirections =
      'https://www.google.com/maps/dir/18.1936598,-67.1536993/cc+technology+'
      'solutions/@18.1997762,-67.1567553,15z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!'
      '1s0x8c02b28af62bea93:0x72981863868bb88f!2m2!1d-67.142913!2d18.201996';

  Image _eventImage = Image.asset('images/dir1.jpg', height: 250, width: 400);

  String getEventInfo(){
    return _eventInformation;
  }

  String getEventDirection(){
    return _eventDirections;
  }

  Image getEventImage(){
    return _eventImage;
  }

}