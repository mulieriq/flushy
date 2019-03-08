/*
Author : Eric Muli
Github : github.com/EricRootLee
Page Title : Handling Rest Api From Local DATABASE
Platform : Mobile
Target : Android And IoS
Technology : Flutter
*/

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../tools/data.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RestApiHome extends StatefulWidget {
  @override
  _RestApiHomeState createState() => _RestApiHomeState();
}

class _RestApiHomeState extends State<RestApiHome> {
  var apidata;

  String url = "http://192.168.43.118:3000/developer.api/products/";

  RestApi products;

  getdata() async {
    var results = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    var data = jsonDecode(results.body);
    var product = RestApi.fromJson(data);
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Api Dashboard"),
      ),
      body: products == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : new GridView.count(
              crossAxisCount: 2,
              children: products.products
                  .map((product) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Stack(
                            alignment: FractionalOffset.bottomRight,
                            children: <Widget>[
                              Stack(
                                fit: StackFit.expand,
                                children: <Widget>[
                                  Card(
                                    clipBehavior: Clip.hardEdge,
                                    child: Container(
                                      child: new Image.network(
                                        product.img,
                                        fit: BoxFit.cover,
                                      ),
                                      height: 100.0,
                                      width: 195.0,
                                    ),
                                  ),
                                ],
                              ),
                              new Container(
                                margin: const EdgeInsets.only(
                                    bottom: 4.0, right: 5.0),
                                color: Colors.black.withAlpha(100),
                                child: new Text(
                                  product.name,
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ]),
                      ))
                  .toList()),
    );
  }
}
