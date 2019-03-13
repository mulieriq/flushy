/*
Author : Eric Muli
Github : github.com/EricRootLee
Page Title : Notifications Section
Platform : Mobile
Target : Android And IoS
Technology : Flutter
*/

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Notifications'),
      ),
    );
  }
}