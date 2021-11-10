import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class categiriesScreen extends StatefulWidget {
  const categiriesScreen({Key? key}) : super(key: key);

  @override
  _categiriesScreenState createState() => _categiriesScreenState();
}

class _categiriesScreenState extends State<categiriesScreen> {
  double picWidth = 300, picHeight = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 0.9,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        children: <Widget>[
          myGridItems('Sports ', 'sports', Icon(Icons.sports_baseball, color: Colors.orange)),
          myGridItems('Theater ', 'theater', Icon(Icons.theater_comedy, color: Colors.red)),
          myGridItems('Concert ', 'concert', Icon(Icons.mic_external_on, color: Colors.purple)),
          myGridItems('Other ', 'other', Icon(Icons.confirmation_num, color: Colors.yellow)),
        ],
      ),
    );
  }

  //Categories body layout
  //The body has the design and parameters wanted for the cards that is-
  // going to be displaying in the GridView/body
  Widget myGridItems(String gridName, String gridImage, Widget _icon) {
    return InkWell(
      onTap: () {
        OnTapCategory(categoryName: gridName);
      },
      child: Container(
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(14.0),
          image: DecorationImage(
            image: AssetImage('images/$gridImage.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(2.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    gridName,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                _icon,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

///The function for the Tap of each Category
//TODO:This should call another class file that will direct -
// TODO: to which of the any categories the user taps on
void OnTapCategory({required String categoryName}){

  //TODO: Here we are going to add the categoy window instead of the print that is giving
  switch(categoryName){
    case 'Sports ': return print('Sports Tap');
    case 'Theater ': return print('Theater Tap');
    case 'Concert ': return print('Concert Tap');
    case 'Other ': return print('Other Tap');
    default: return print('Nothing happened');
  }

}