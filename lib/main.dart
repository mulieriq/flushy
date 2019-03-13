/*
Author : Eric Muli
Github : github.com/EricRootLee
Page Title : Main Control 
Platform : Mobile
Target : Android And IoS
Technology : Flutter
*/

import 'package:flushy/userScreen/intro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Funtrest',
      theme: new ThemeData(primarySwatch: Colors.deepPurple),
      home: new Intro(),
      routes: {},
      debugShowCheckedModeBanner: false,
    );
  }
}
