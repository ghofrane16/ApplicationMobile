import 'package:application1/Citoyens/PageAceuilC.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class NumeroPub extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NumeroPubState();
  }
}

class _NumeroPubState extends State<NumeroPub> {
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFC9BA),
      appBar: BarApp(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PhoneHead(),
            ListeNumbers(),
            Container(
              margin: EdgeInsets.only(),
              padding: EdgeInsets.only(),
              child: IconButton(
                icon: const Icon(Icons.search),
                iconSize: 15,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PhoneHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/logo.png');
    Image image = Image(
      image: assetImage,
      width: 125,
      height: 125,
    );
    return Container(
        child: Container(
            child: Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: ClipOval(
            child: image,
          ),
        ),
        Container(
            child: Text(
          'Liste des numéros utiles',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Color(0xff7eafb5)),
        )),
      ],
    )));
  }
}

class ListeNumbers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: ListTile(
                    tileColor: Colors.white54,
                    title: Text('Police Secours'),
                    subtitle: Text('197'),
                    leading: Icon(
                      Icons.policy_rounded,
                      color: Color(0xff7eafb5),
                    ),
                    trailing: TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 12),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.pink))),
                        child: Text(
                          'Appeler',
                          style: TextStyle(
                            color: Colors.pink,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        onPressed: () async {
                          await FlutterPhoneDirectCaller.callNumber('197');
                        }),
                    contentPadding: EdgeInsets.all(2),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: ListTile(
                      tileColor: Colors.white54,
                      title: Text('Protection Civil'),
                      subtitle: Text('198'),
                      leading: Icon(
                        Icons.policy_rounded,
                        color: Color(0xff7eafb5),
                      ),
                      trailing: TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 12),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.pink))),
                          child: Text(
                            'Appeler',
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onPressed: () async {
                            await FlutterPhoneDirectCaller.callNumber('198');
                          }),
                      contentPadding: EdgeInsets.all(10)),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: ListTile(
                      tileColor: Colors.white54,
                      title: Text('Numéro vert pour les touristes'),
                      subtitle: Text('80.100.333'),
                      leading: Icon(
                        Icons.hotel,
                        color: Color(0xff7eafb5),
                      ),
                      trailing: TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 12),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.pink))),
                          child: Text(
                            'Appeler',
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onPressed: () async {
                            await FlutterPhoneDirectCaller.callNumber(
                                '80.100.333');
                          }),
                      contentPadding: EdgeInsets.all(10)),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: ListTile(
                      tileColor: Colors.white54,
                      title: Text('Renseignements'),
                      subtitle: Text('1200'),
                      leading: Icon(
                        Icons.perm_device_information,
                        color: Color(0xff7eafb5),
                      ),
                      trailing: TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 12),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.pink))),
                          child: Text(
                            'Appeler',
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onPressed: () async {
                            await FlutterPhoneDirectCaller.callNumber('1200');
                          }),
                      contentPadding: EdgeInsets.all(10)),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: ListTile(
                      tileColor: Colors.white54,
                      title: Text('Renseignements'),
                      subtitle: Text('1210'),
                      leading: Icon(
                        Icons.perm_device_information,
                        color: Color(0xff7eafb5),
                      ),
                      trailing: TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 12),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.pink))),
                          child: Text(
                            'Appeler',
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onPressed: () async {
                            await FlutterPhoneDirectCaller.callNumber('1210');
                          }),
                      contentPadding: EdgeInsets.all(10)),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: ListTile(
                      tileColor: Colors.white54,
                      title: Text('SOS Remorquage'),
                      subtitle: Text('71.255.024'),
                      leading: Icon(
                        Icons.car_rental,
                        color: Color(0xff7eafb5),
                      ),
                      trailing: TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 12),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.pink))),
                          child: Text(
                            'Appeler',
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onPressed: () async {
                            await FlutterPhoneDirectCaller.callNumber(
                                '71.255.024');
                          }),
                      contentPadding: EdgeInsets.all(10)),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: ListTile(
                      tileColor: Colors.white54,
                      title: Text('SOS Remorquage'),
                      subtitle: Text('71.256.550'),
                      leading: Icon(
                        Icons.car_rental,
                        color: Color(0xff7eafb5),
                      ),
                      trailing: TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 12),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.pink))),
                          child: Text(
                            'Appeler',
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onPressed: () async {
                            await FlutterPhoneDirectCaller.callNumber(
                                '71.256.550');
                          }),
                      contentPadding: EdgeInsets.all(10)),
                ),
              ],
            )));
  }
}

class BarApp extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xffEFC9BA),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.grey[800],
          size: 20,
        ),
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => PageAceuilC()),
              (Route<dynamic> route) => false);
        },
      ),
    );
  }
}
