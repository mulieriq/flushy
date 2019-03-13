/*
Author : Eric Muli
Github : github.com/EricRootLee
Page Title : Intro Slider
Platform : Mobile
Target : Android And IoS
Technology : Flutter
*/
import 'package:flushy/userScreen/homepage.dart';
import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class Intro extends StatelessWidget {
  //making list of pages needed to pass in IntroViewsFlutter constructor.
  final pages = [
    PageViewModel(
        pageColor: const Color(0xFF03A9F4),
        // iconImageAssetPath: 'assets/air-hostess.png',
        bubble: Image.asset('assets/plane_PNG5243.png'),
        body: TyperAnimatedTextKit(
          text: [
            'Haselfree  booking  of  flight  tickets  with  full  refund  on  cancelation',
          ],
          textStyle: TextStyle(fontSize: 40.0, fontFamily: "AlexBrush"),
        ),
        title: Text(
          'Free Flights ',
        ),
        textStyle: TextStyle(fontFamily: 'AlexBrush', color: Colors.white),
        mainImage: Image.asset(
          'assets/plane_PNG5243.png',
          height: 285.0,
          width: 285.0,
          alignment: Alignment.center,
        )),
    PageViewModel(
      pageColor: const Color(0xFF8BC34A),
      iconImageAssetPath: 'assets/waiter.jpg',
      body: TypewriterAnimatedTextKit(
        text: [
          'We  work  for  the  comfort ,  enjoy  your  stay  at  our  beautiful  hotels',
        ],
        textStyle: TextStyle(fontSize: 40.0, fontFamily: "AlexBrush"),
      ),
      title: Text('Hotels'),
      mainImage: Image.asset(
        'assets/plane_PNG5243.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      textStyle: TextStyle(fontFamily: 'AlexBrush', color: Colors.white),
    ),
    PageViewModel(
      pageColor: const Color(0xFF607D8B),
      iconImageAssetPath: 'assets/taxi-driver.jpg',
      body: TyperAnimatedTextKit(
        text: [
          'Easy  cab  booking  at  your  doorstep  with  cashless  payment  system',
        ],
        textStyle: TextStyle(fontSize: 40.0, fontFamily: "AlexBrush"),
      ),
      title: Text('Cabs'),
      mainImage: Image.asset(
        'assets/Taxi-PNG-Photo.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      textStyle: TextStyle(fontFamily: 'AlexBrush', color: Colors.white),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //title of app
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), //ThemeData
      home: Builder(
        builder: (context) => IntroViewsFlutter(
              pages,
              onTapDoneButton: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ), //MaterialPageRoute
                );
              },
              showSkipButton:
                  true, //Whether you want to show the skip button or not.
              pageButtonTextStyles: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ), //IntroViewsFlutter
      ), //Builder
    ); //Material App
  }
}
