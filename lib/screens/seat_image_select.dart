import 'package:flutter/cupertino.dart';

class SetImageSelect{

  Widget getImage(){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Image.asset('images/stadium.jpg',
            height: 200, width: 500, fit: BoxFit.fill),
      ),
    );
  }

}