import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({Key? key}) : super(key: key);

  @override
  _profileScreenState createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen>{

  static const double _iconSize = 48.0;
  static const Color _iconColor = Colors.black;
  String _accountEmail = 'emailused21.gmail.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget> [
          _CardEmailLayout(email: _accountEmail),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                children: <Widget>[
                  Card(
                    child: Column(
                      children: <Widget>[
                        CardLayout(cardName: 'Change email', cardIcon: Icon(Icons.account_circle_outlined, size: _iconSize, color: _iconColor,)),
                        Divider(thickness: 2),
                        CardLayout(cardName: 'Change password', cardIcon: Icon(Icons.vpn_key, size: _iconSize, color: _iconColor,)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ButtonLogOut(),
        ],
      ),
    );
  }

  ///Card email Layout
  Widget _CardEmailLayout({ required String email}){
    return  Padding(
      padding: const EdgeInsets.only(right: 36.0, left: 26.0),
      child: Container(
        child: Card(
          child: Center(child:
          Column(
            children: [
              Icon(Icons.account_box_outlined, size: 50),
              Text(email,
                style: TextStyle(fontSize: 22),),
            ],
          ),
          ),
        ),
      ),
    );
  }

  ///Cards Layout body
  Widget CardLayout({required String cardName, required Icon cardIcon, String? description}) {
    return InkWell(
      onTap: () {
        OnTapCard(cardName: cardName);
      },
      child: ListTile(
        leading: cardIcon,
        title: Text(cardName, style: TextStyle(fontWeight: FontWeight.bold)),
        //subtitle: Text(description!),
      ),
    );
  }

  ///_CardLayout OnTap method
  void OnTapCard({required String cardName}){
    switch (cardName) {
      case 'Change email' : return print('Change Email Tap');
      case 'Change password' : return print('Change password Tap');
      default : return print('Nothing happened');
    }
  }

  ///Logout Button Layout body
  Widget ButtonLogOut(){
    return Column(
      children: [
        Container(
          // padding: EdgeInsets,
          margin: EdgeInsets.only(top: 130),
          child: Padding(
            padding: const EdgeInsets.only(left: 100.0, right: 100.0),
            child: TextButton(
                onPressed: () {},
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
                child: Text('Logout', style: TextStyle(fontSize: 20.0, color: Colors.white))),
          ),
        ),
        TextButton(onPressed: () {},
            child: Text('Licences', style: TextStyle(fontSize: 12, color: Colors.grey))),
      ],
    );
  }

}
