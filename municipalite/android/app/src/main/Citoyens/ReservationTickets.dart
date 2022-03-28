import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:application1/Widgets/HeaderWidget.dart';
import 'package:application1/Widgets/ThemeStyle.dart';
import 'package:application1/Widgets/ThemeColors.dart';
import 'Compteur.dart';

class ReservationTicket extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ReservationticketState();
  }
}

class _ReservationticketState extends State<ReservationTicket> {
  double _headerHeight = 250;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffEFC9BA),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          color: Colors.grey,
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            color: Colors.grey,
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 550.0,
            decoration: BoxDecoration(
                color: Color(0xffEFC9BA),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(45.0),
                    bottomRight: Radius.circular(45.0))),
            child: Container(
              child: Column(
                children: [
                  SizedBox(height: 10.0),
                  File(),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Compteur(),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class File extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('File d\'attente', style: ThemeStyles.departureTextStyle),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            children: <Widget>[
              Text('Municipalité de tunis ',
                  style: ThemeStyles.arrivalTextStyle)
            ],
          )
        ],
      ),
    );
  }
}
