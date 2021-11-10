import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:ticket_plus_demo/screens/seat_selection.dart';
import 'seat_image_select.dart';

SeatSelection seatSelectionObj = SeatSelection();
SetImageSelect eventImageObj = SetImageSelect();

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  _testState createState() => _testState();
}

class _testState extends State<test> {

  ///Event Ticket Seller body layout
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tests Screen'),
      ),
      body: EventTickeySellerBody()
    );
  }


  Widget EventTickeySellerBody() => VenueMap();

  ///Event Venue Map Layout
  Widget VenueMap(){
    return Column(
      children: <Widget>[
        eventImageObj.getImage(),
        SeatSelection(),
      ],
    );
  }

  ///Seat Selection body Layout
Widget SeatSelection(){
    return  Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
      child: Card(
        child: Column(
          children: <Widget>[
            SeatSection(),
            RowSelection(),
          ],
        ),
      ),
    );
}

///Seat Section of the Seat body Layout

   Widget DropDownLayout(String title, String startText, List <String> textList){
    return Row(
      children: <Widget> [
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Text(title),
        ),
        SizedBox(width: 90.0),
        DropdownButton <String>(
          value: startText,
          icon: const Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: const TextStyle(color: Colors.black),
          underline: Container(
            height: 2,
            color: Colors.grey,
          ),
          onChanged: (String? newValue) {
            setState(() {
              startText = newValue!;
            });
          },
          items: textList.map((String listItem) {
            return DropdownMenuItem(
              value: listItem,
              child: Text(listItem),
            );
          }).toList(),
        ),
      ],
    );
  }

  ///Seat body Layout
  String sectionDropdownValue = seatSelectionObj.getSectionDropValue();
  List <String> seatSection = seatSelectionObj.getSection();

  Widget SeatSection(){
    return DropDownLayout('Seat Selection', sectionDropdownValue, seatSection);
  }


//TODO: Seat the price for the Section selected from the user
  String _sectionPrice = seatSelectionObj.toStringPrice();
  List <double> sectionPrice = seatSelectionObj.getPrice();
void _PriceSelection(String seat){

  }

  ///Row body Layout

  String rowDropdownValue = seatSelectionObj.getRowDropValue();
  List <String> rowSelection = seatSelectionObj.getRow();

  Widget RowSelection(){
    return DropDownLayout('Row Selection', rowDropdownValue, rowSelection);
  }


}




