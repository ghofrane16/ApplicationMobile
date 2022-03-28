import 'dart:js';
import 'ProfilePage.dart';
import 'PageAceuilC.dart';
import 'package:flutter/material.dart';
import 'CalendrierPage.dart';

class ReservationRend extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ReservationRendState();
  }
}

class _ReservationRendState extends State<ReservationRend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchSection(),
            ProfileSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarSection(),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.grey[800],
          size: 20,
        ),
        onPressed: null,
      ),
      title: Text(
        'Reservation',
        style: TextStyle(
          color: Color(0xffff7f00),
          fontSize: 22,
          fontWeight: FontWeight.w800,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.place,
            color: Colors.grey[800],
            size: 20,
          ),
          onPressed: null,
        ),
      ],
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }
}

class SearchSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 4,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Nom du Responsable',
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return CalendrierPage();
                        },
                      ),
                    );
                  },
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 26,
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(10),
                    shape: CircleBorder(),
                    shadowColor: Colors.white,
                    primary: Color(0xff808080),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choisir une date',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '12 Dec - 22 Dec',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  final List ResponsablesList = [
    {
      'Bureau': 'Président',
      'Nom du Responsable': 'Mkadem Ghofrane',
    },
    {
      'Bureau': 'Controle et d\'enregistrement',
      'Nom du Responsable': 'Abir Cherif',
    },
    {
      'Bureau': ' Les relations avec les citoyens ',
      'Nom du Responsable': 'Maha Kossekssi',
    },
    {
      'Bureau': 'Controle des arrangements',
      'Nom du Responsable': 'Sabra Berrached',
    },
    {
      'Bureau': 'Sous-direction de l\'action culturelle et sociale',
      'Nom du Responsable': 'Sabra Berrached',
    },
    {
      'Bureau': 'Département des licences urbaines',
      'Nom du Responsable': 'Sabra Berrached',
    },
    {
      'Bureau': 'Autorité de l\'état civil',
      'Nom du Responsable': 'Sabra Berrached',
    },
    {
      'Bureau': 'Autorité de l\'état civil',
      'Nom du Responsable': 'Sabra Berrached',
    },
    {
      'Bureau': 'Interet contesté',
      'Nom du Responsable': 'Sabra Berrached',
    },
    {
      'Bureau': 'Département de documentation',
      'Nom du Responsable': 'Sabra Berrached',
    },
    {
      'Bureau': 'Département performance et extraction',
      'Nom du Responsable': 'Sabra Berrached',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '     Listes des responsables',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Filters',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.filter_list_outlined,
                      color: Color(0xffEFC9BA),
                      size: 25,
                    ),
                    onPressed: null,
                  ),
                ],
              )
            ],
          ),
        ),
        Column(
          children: ResponsablesList.map((responsable) {
            return ResponsableRdv(responsable);
          }).toList(),
        )
      ],
    ));
  }
}

class ResponsableRdv extends StatelessWidget {
  final Map ResponsableData;
  ResponsableRdv(this.ResponsableData);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 4,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 5,
                  right: -15,
                  child: MaterialButton(
                    color: Colors.white,
                    shape: CircleBorder(),
                    onPressed: () {},
                    child: Icon(
                      Icons.meeting_room_rounded,
                      color: Color(0xffEFC9BA),
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  ResponsableData['Nom du Responsable'],
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  ResponsableData['Bureau'],
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.person_off_outlined,
                      color: Color(0xffEFC9BA),
                      size: 20.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.place,
                      color: Color(0xffEFC9BA),
                      size: 20.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavBarSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.grey[600],
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Color(0xffEFC9BA),
          ),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_outline_rounded,
            color: Color(0xffEFC9BA),
          ),
          label: 'Tips',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Color(0xffEFC9BA),
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
