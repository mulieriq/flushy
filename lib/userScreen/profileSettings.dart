/*
Author : Eric Muli
Github : github.com/EricRootLee
Page Title : Profile Settings
Platform : Mobile
Target : Android And IoS
Technology : Flutter
*/

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProfileSettings extends StatefulWidget {
  @override
  _ProfileSettingsState createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Settings'),
      ),
    );
  }
}
