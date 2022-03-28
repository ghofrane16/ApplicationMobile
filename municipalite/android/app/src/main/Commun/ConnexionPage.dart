import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'RegistrerPage.dart';
import 'package:application1/Widgets/DecorationTheme.dart';
import 'package:application1/Widgets/HeaderWidget.dart';
import 'MotDePasseOublier.dart';
import 'VerificationMotdePasse.dart';
import 'package:application1/Citoyens/PageAceuilC.dart';
import 'RegistrerPage.dart';

class ConnexionPage extends StatefulWidget {
  const ConnexionPage({Key? key}) : super(key: key);
  @override
  _ConnexionPageState createState() => _ConnexionPageState();
}

class _ConnexionPageState extends State<ConnexionPage> {
  double _headerHeight = 250;
  Key _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _headerHeight,
              child: HeaderWidget(_headerHeight, true, Icons.login_rounded),
            ),
            SafeArea(
                child: Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Column(
                children: [
                  Text(
                    'Connexion',
                    style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Connectez vous à votre compte',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        TextField(
                          decoration: DecorationTheme().textInputDecoration(
                            'Nom d\'utilisateur',
                            'Entrez le nom d\' utilisateur',
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: DecorationTheme().textInputDecoration(
                              'Mot de passe', 'Entrez votre mot de passe'),
                        ),
                        SizedBox(height: 15.0),
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgotPasswordPage()),
                              );
                            },
                            child: Text(
                              "Forgot your password?",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            child: Text.rich(TextSpan(children: [
                              TextSpan(text: 'J\'ai pas du compte ! '),
                              TextSpan(
                                  text: 'Creation',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  RegistrerPage()));
                                    },
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffca3436)))
                            ]))),
                        Container(
                          decoration:
                              DecorationTheme().buttonBoxDeceration(context),
                          child: ElevatedButton(
                              style: DecorationTheme().buttonStyle(),
                              child: Padding(
                                  padding: EdgeInsets.fromLTRB(40, 5, 40, 5),
                                  child: Text(
                                    'Connexion',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )),
                              onPressed: () {}),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
