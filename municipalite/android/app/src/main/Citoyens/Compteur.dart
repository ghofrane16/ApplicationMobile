import 'package:flutter/material.dart';
import 'package:application1/Widgets/ThemeColors.dart';
import 'package:application1/Widgets/ThemeStyle.dart';

class Compteur extends StatefulWidget {
  @override
  _CompteurState createState() => _CompteurState();
}

class _CompteurState extends State<Compteur> {
  int _counter = 0;
  int _count = -1;

  void _incrementCounter() {
    setState(() {
      _counter++;
      _count++;
    });
  }

  void _modal() => showModalBottomSheet(
      context: context,
      builder: (context) => Wrap(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                padding: EdgeInsets.fromLTRB(300, 20, 20, 10),
                child: Text('Vous etes sure de tirer une ticket ?',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    )),
              ),
              SizedBox(height: 20),
              Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xffEFC9BA),
                      ),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(20)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.pink),
                      )),
                    ),
                    child: Text(
                      'Confirmer',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    onPressed: _incrementCounter,
                  )),
            ],
          ));
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(0, 1),
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 30.0, bottom: 120.0, left: 35.0, right: 35.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Lundi 21 2022.', style: ThemeStyles.greyStyle),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Reserver votre ticket en ligne',
                              style: ThemeStyles.subBlackTextStyle),
                        ],
                      ),
                      SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Il existe $_count personnes avant toi',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.blueGrey)),
                        ],
                      ),
                      SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('vous etes le $_counter ème dans la liste',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.pink)),
                        ],
                      ),
                      SizedBox(height: 70),
                      Container(
                        child: Column(
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Color(0xffEFC9BA),
                                ),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.all(25)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.pink),
                                )),
                              ),
                              child: Text(
                                'Reserver',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              onPressed: () => _modal(),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
