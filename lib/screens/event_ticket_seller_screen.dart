import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:ticket_plus_demo/screens/seat_image_select.dart';
import 'package:ticket_plus_demo/screens/seat_selection.dart';

SeatSelection seatSelectionObj = SeatSelection();
SetImageSelect eventImageObj = SetImageSelect();

class eventTicketSellerScreen extends StatefulWidget {
  const eventTicketSellerScreen({Key? key}) : super(key: key);

  @override
  _eventTicketSellerScreenState createState() => _eventTicketSellerScreenState();
}

class _eventTicketSellerScreenState extends State<eventTicketSellerScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.arrow_back,
                  color: Colors.black)),
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
        SelectionContainer(),
      ],
    );
  }

  ///Seat Selection body Layout
  Widget SelectionContainer(){
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

  ///DropDown body Layout
  Widget DropDownLayout(String title, String startText, List <String> textList){
    return Row(
      children: <Widget> [
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Text(title),
        ),
        SizedBox(width: 90.0),
        DropdownButton(
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
          items: textList.map<DropdownMenuItem <String>>((String value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value),
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
