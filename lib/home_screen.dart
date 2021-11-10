import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_plus_demo/screens/event_TabBar.dart';

import 'package:ticket_plus_demo/screens/cart_screen.dart';
import 'package:ticket_plus_demo/screens/profile_screen.dart';
import 'package:ticket_plus_demo/screens/test.dart';

///This file is for the parameters of the main app body and navigation
///It also makes the call to the other UI's
class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<homeScreen> {

  ///ButtomNavigation variables and method
  ///_screen vriable conatins the classes af the calls of the others screens (home, cart, account)
  ///check the classes for more information
  PageController _pageController = PageController();
  List<Widget> _screens = [event_TabBar(), cartScreen(), profileScreen(),test()];
  void _onPageChanged(int index) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              pinned: false,
              snap: false,
              floating: true,
              backgroundColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset('images/TTP_logo.png', fit: BoxFit.fill,))
            ),
          ];
        },
        body: PageView(
          controller: _pageController,
          children: _screens,
          onPageChanged: _onPageChanged,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.local_activity), label: 'Events'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Account'),
          BottomNavigationBarItem(
              icon: Icon(Icons.delete), label: 'Test'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        onTap: _onItemTapped,
      ),
    );
  }

  ///Tapped icon function and method creation:
//This variable is use to let know the BottomNav in wish position it is -
// to give the color identifier to he icon
  int _selectedIndex = 0;

  //This method is to give also the index c=value to the page controller so it can
  // know what index is tapped and change the window it is in to the one that is tapped
  //*It is called in the BottomNavigation onTap: declaration*
  void _onItemTapped(int index) {
    setState(() {
      _pageController.jumpToPage(index);
      _selectedIndex = index;
    }); //ButtonNavigation calling
  }
}
