/*
Author : Eric Muli
Github : github.com/EricRootLee
Page Title : Messages SEctions
Platform : Mobile
Target : Android And IoS
Technology : Flutter
*/

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Messages'),
      ),
    );
  }
}
