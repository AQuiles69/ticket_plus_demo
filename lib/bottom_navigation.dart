import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_plus_demo/home_screen.dart';

//Button Navigation preferences and setup
class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  //BottomNavigation Layout design
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const <BottomNavigationBarItem>[

      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      BottomNavigationBarItem(
          icon: Icon(Icons.add_shopping_cart), label: 'Cart'),
      BottomNavigationBarItem(
          icon: Icon(Icons.perm_identity), label: 'Account'),
    ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.orange,
      onTap: _onItemTapped,
    );
  }


  //Tapped icon function and method creation
  int selectedIndex = 0;

  homeScreen homeVar = new homeScreen();


  void _onItemTapped(int index){
    setState((){
      selectedIndex = index;
    });
  }
}