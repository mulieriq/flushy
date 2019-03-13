/*
Author : Eric Muli
Github : github.com/EricRootLee
Page Title : Order History
Platform : Mobile
Target : Android And IoS
Technology : Flutter
*/

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class OrderHistory extends StatefulWidget {
  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Order History'),
      ),
    );
  }
}