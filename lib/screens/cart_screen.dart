
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cartScreen extends StatefulWidget {
  const cartScreen({Key? key}) : super(key: key);

  @override
  _cartScreenState createState() => _cartScreenState();
}

class _cartScreenState extends State<cartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
    );
  }
}
