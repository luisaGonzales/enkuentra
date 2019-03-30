import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed("/choose_talent");
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final TextStyle textStyle = new TextStyle(color: themeData.cardColor, letterSpacing: 3.0, fontSize: 16);
    return Scaffold(
      backgroundColor: themeData.primaryColor,
      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Image(
            image: new AssetImage('assets/splash.jpg'),
            height: 350.0,
          ),
          new Expanded(
            child: new Column(
              children: <Widget>[
                new Container(

                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text('NO DESPERDICIES', style: textStyle,),
                      new Text('TU TALENTO', style: new TextStyle(color:themeData.cardColor, fontWeight: FontWeight.bold, letterSpacing: 3.0, fontSize: 16)),
                      new Text('COMPARTELO AQUÍ', style: textStyle)
                    ],
                  ),
                  margin: EdgeInsets.all(30.0),

                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
