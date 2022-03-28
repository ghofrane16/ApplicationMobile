import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:application1/Widgets/HeaderWidget.dart';
import 'package:application1/Widgets/DecorationTheme.dart';
import 'package:application1/Citoyens/PageAceuilC.dart';
import 'package:application1/Admin/PageAceuilA.dart';
import 'package:application1/Empolyee/PageAceuilE.dart';

class RegistrerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegistrerPageState();
  }
}

class _RegistrerPageState extends State<RegistrerPage> {
  final _formkey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 150,
                child: HeaderWidget(150, false, Icons.person_add_alt_1_rounded),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 50, 25, 10),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          GestureDetector(
                            child: Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                          width: 5, color: Colors.white),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 20,
                                          offset: const Offset(5, 5),
                                        )
                                      ]),
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.grey.shade300,
                                    size: 80.0,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: TextFormField(
                              decoration: DecorationTheme().textInputDecoration(
                                  'Nom', 'Entrez votre nom'),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: TextFormField(
                              decoration: DecorationTheme().textInputDecoration(
                                  'Prénom', 'Entrez votre prénom'),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            child: TextFormField(
                              decoration: DecorationTheme().textInputDecoration(
                                  "L\'adresse Email", "Entrez votre email"),
                              keyboardType: TextInputType.emailAddress,
                              validator: (val) {
                                if (!(val!.isEmpty) &&
                                    !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                                        .hasMatch(val)) {
                                  return "Prière de donner une adresse valide";
                                }
                                return null;
                              },
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            child: TextFormField(
                              decoration: DecorationTheme().textInputDecoration(
                                  "Numéro de téléphone",
                                  "Entrez votre numéro de téléphone"),
                              keyboardType: TextInputType.phone,
                              validator: (val) {
                                if (!(val!.isEmpty) &&
                                    !RegExp(r"^(\d+)*$").hasMatch(val)) {
                                  return "Prière d'entrer un numéro de téléphone ";
                                }
                                return null;
                              },
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            child: TextFormField(
                              obscureText: true,
                              decoration: DecorationTheme().textInputDecoration(
                                  "Mot de passe*", "Entrez votre mot de passe"),
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Prière d'entrer votre mot de passe";
                                }
                                return null;
                              },
                            ),
                          ),
                          SizedBox(height: 15.0),
                          FormField<bool>(
                            builder: (State) {
                              return Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                        value: checkboxValue,
                                        onChanged: (value) {
                                          setState(() {
                                            checkboxValue = value!;
                                            State.didChange(value);
                                          });
                                        },
                                      ),
                                    ],
                                  )
                                ],
                              );
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration:
                                DecorationTheme().buttonBoxDeceration(context),
                            child: ElevatedButton(
                              style: DecorationTheme().buttonStyle(),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(40, 10, 40, 10),
                                child: Text(
                                  'S\'inscrire',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                if (_formkey.currentState!.validate()) {
                                  Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(
                                          builder: (context) => PageAceuilA()),
                                      (Route<dynamic> route) => false);
                                }
                              },
                            ),
                          ),
                          SizedBox(
                            width: 30.0,
                          ),
                          GestureDetector(
                            child: Container(
                              padding: EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                    width: 5, color: Color(0xffEFC9BA)),
                                color: Color(0xffEFC9BA),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
