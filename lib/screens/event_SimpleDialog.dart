import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ticket_plus_demo/screens/event_SimplDialog_content.dart';
import 'package:url_launcher/url_launcher.dart';

class EventSimpleDialog {

  var _eventInformation = EventSimpleDialogContent().getEventInfo();

  var eventDirections = EventSimpleDialogContent().getEventDirection();

  ///Information Pop-Message body layout
  void showSimpleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('Information:'),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(_eventInformation),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Spacer(),
                  Icon(Icons.directions),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Get Directions',
                          style: TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              eventDirections;
                              if (await canLaunch(eventDirections)) {
                                await launch(eventDirections);
                              } else {
                                throw 'Cannot load url';
                              }
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            EventSimpleDialogContent().getEventImage(),
          ],
        );
      },
    );
  }
}
