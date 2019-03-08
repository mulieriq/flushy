/*
Author : Eric Muli
Github : github.com/EricRootLee
Page Title : Login and user registration using firebase 
Platform : Mobile
Target : Android And IoS
Technology : Flutter
*/

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(5.0),
          height: 200,
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    hintText: "Username",
                    labelText: "Username",
                    prefixIcon: Icon(Icons.person),
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                },
              ),
              TextField(
                decoration: InputDecoration(
                    prefix: Icon(Icons.security),
                    hintText: "password",
                    labelText: "password",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                onChanged: (value) {
                  setState(() {
                    _password = value;
                  });
                },
                obscureText: true,
              ),
              new RaisedButton(
                onPressed: () {
                  // FirebaseAuth.instance
                  //     .createUserWithEmailAndPassword(
                  //         email: _email, password: _password)
                  //     .then((signedInUSer) {})
                  //     .catchError((e) {
                  //   print(e);
                  // });
                },
                child: new Text("Login"),
                shape: StadiumBorder(),
                splashColor: Colors.yellow,
              )
            ],
          ),
        ),
      ),
    );
  }
}
