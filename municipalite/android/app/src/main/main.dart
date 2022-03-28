import 'package:application1/Citoyens/ReservationRend.dart';
import 'package:application1/Commun/BienvenuePage.dart';
import 'package:flutter/material.dart';
import 'Citoyens/NumeroPub.dart';
import 'Citoyens/ReservationTickets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guidini Application',
      debugShowCheckedModeBanner: false,
      home: BienvenuePage(),
    );
  }
}
