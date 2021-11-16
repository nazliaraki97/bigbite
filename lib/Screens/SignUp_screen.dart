import 'package:flutter/material.dart';

import '../constants.dart';

class SignupScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimeryColor,
      body: Center(
          child: Column(
            children: <Widget>[ Expanded(
          child: ListView(
          shrinkWrap: true,
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(15),
            children: [
              Container(
                  margin: EdgeInsets.only(top: 100),
                  child: Image.asset(
                    'assets/welc.png',
                  )),
              Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: kprimeryLighterColor,
                      borderRadius: BorderRadius.circular(29)),
                  width: 300,
                  height: 65,
                  padding: EdgeInsets.all(15),
                  child: ClipRRect(
                      child: TextField(
                        decoration: InputDecoration(hintText: 'First name'),
                      ))),
              Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: kprimeryLighterColor,
                      borderRadius: BorderRadius.circular(29)),
                  width: 300,
                  height: 65,
                  padding: EdgeInsets.all(15),
                  child: ClipRRect(
                      child: TextField(
                        decoration: InputDecoration(hintText: 'Last name'),
                      ))),
              Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: kprimeryLighterColor,
                      borderRadius: BorderRadius.circular(29)),
                  width: 300,
                  height: 65,
                  padding: EdgeInsets.all(15),
                  child: ClipRRect(
                      child: TextField(
                        decoration: InputDecoration(hintText: 'phone number'),
                      ))),
              Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: kprimeryLighterColor,
                      borderRadius: BorderRadius.circular(29)),
                  width: 300,
                  height: 65,
                  padding: EdgeInsets.all(15),
                  child: ClipRRect(
                      child: TextField(
                        decoration: InputDecoration(hintText: 'Email'),
                      ))),
              Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: kprimeryLighterColor,
                      borderRadius: BorderRadius.circular(29)),
                  width: 300,
                  height: 65,
                  padding: EdgeInsets.all(15),
                  child: ClipRRect(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(hintText: 'password'),
                      ))),
              Container(
                  width: 300,
                  height: 65,
                  margin: EdgeInsets.all(10),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(29),
                      child: FlatButton(
                          padding: EdgeInsets.symmetric(
                            vertical: 20,
                          ),
                          color: kprimeryLightererColor,
                          onPressed: () {},
                          child: Text('Sign up')))),
            ],
          ))
      ],
    )),
    );
  }
}
