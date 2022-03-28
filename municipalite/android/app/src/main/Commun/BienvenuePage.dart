import 'dart:async';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ConnexionPage.dart';

class BienvenuePage extends StatefulWidget {
  @override
  _BienvenuePageState createState() => _BienvenuePageState();
}

class _BienvenuePageState extends State<BienvenuePage> {
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: new BoxDecoration(
              gradient: new LinearGradient(
            colors: [
              Color(0xffEFC9BA),
              Color(0xccEFC9BA),
              Color(0x99EFC9BA),
              Color(0x66EFC9BA),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            tileMode: TileMode.clamp,
          )),
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(1200, 20, 5, 0),
                  child: IconButton(
                    icon: Icon(
                      Icons.language,
                      color: Colors.grey,
                      semanticLabel: 'langue',
                    ),
                    onPressed: () => {},
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50, 200, 50, 5),
                  child: Logo(),
                )
              ],
            ),
          )),
    );
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/logo.png');
    Image image = Image(
      image: assetImage,
      width: 140,
      height: 140,
    );
    return Container(
      child: Container(
          child: Column(
        children: [
          Center(
            child: ClipOval(
              child: image,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: Text(
              'Bienvenu chez Guidini app',
              style: TextStyle(
                color: Color(0xffa87e88),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      )),
    );
  }
}
