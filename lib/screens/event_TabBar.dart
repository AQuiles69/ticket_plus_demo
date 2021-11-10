// ignore: file_names
// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'event_categories_screen.dart';
import 'event_screen.dart';

///This class conatins only the TabBar o the homeScreen that will alternate between-
/// Upcoming events and Events Categories

class event_TabBar extends StatefulWidget {
  const event_TabBar({Key? key}) : super(key: key);

  @override
  _event_TabBarState createState() => _event_TabBarState();
}

class _event_TabBarState extends State<event_TabBar> with SingleTickerProviderStateMixin {

  //Tabs Names
  static const List<Tab> _myTabs = <Tab>[
    Tab(text: 'Upcoming Events'),
    Tab(text: 'Events Categories'),
  ];

  //Tab controller and the list of the screen it will go to (Upcoming and Categories Events)
  late TabController _tabController;
  List<Widget> _screens = [eventScreen(), categiriesScreen()];

  //Top TabBar Method
  @override
  void initState() {
    super.initState();

    //This variables assign to the TabController method the lenght and -
    // that is going to change between those to index
    _tabController = TabController(vsync: this, length: _myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  ///TabBar body and what will it be showing in its body
  //In the body it has the controller variable thats is assign with the lenght -
  // and with which screen will it change to
  // the children is what will it show, screen variable contain both the screen-
  // show and alternate with
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          height: 30.0,
          child: TabBar(
            labelColor: Colors.blue,
            controller: _tabController,
            tabs: _myTabs,
          ),
        ),
      ),
      body: TabBarView(controller: _tabController, children: _screens),
    );
  }
}
