import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:ticket_plus_demo/screens/event_SimpleDialog.dart';
import 'package:ticket_plus_demo/screens/event_information_content.dart';
import 'event_ticket_seller_screen.dart';

///This file is the UI design and basic functionalities/methods of the first UI -
///that is the Event screen.

///Object
EventInformationContent EventInformation = EventInformationContent();
EventSimpleDialog simpleDialogObj = EventSimpleDialog();

class eventScreen extends StatefulWidget {
  const eventScreen({Key? key}) : super(key: key);

  @override
  _eventScreenState createState() => _eventScreenState();
}

//Here we we provide the TopTabs controller parameters fo it can change between tabs
class _eventScreenState extends State<eventScreen> {

  ///Main body layout
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  //Placeholder(fallbackWidth: 100, fallbackHeight: 150),
                  EventInformation.getImage(),
                  Text(
                    EventInformation.getTeam(),
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Divider(thickness: 2),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            EventInformation.getDate(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 100),
                          Flexible(
                            child: Text(
                              EventInformation.getLocation(),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const eventTicketSellerScreen()));
                        },
                        child: Text('Buy Ticket'),
                      ),
                      TextButton(
                        onPressed: () {
                          simpleDialogObj.showSimpleDialog(context);
                          },
                        child: Text('Information'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
