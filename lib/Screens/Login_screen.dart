import 'package:big_bite/constants.dart';
import 'package:flutter/material.dart';

import 'SignUp_screen.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kprimeryColor,
        body: Center(
            child: Column(
          children: [
            Expanded(
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
                    margin: EdgeInsets.only(top: 10),
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
                    margin: EdgeInsets.only(top: 10),
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
                    margin: EdgeInsets.only(top: 10),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(29),
                        child: FlatButton(
                            padding: EdgeInsets.symmetric(
                              vertical: 20,
                            ),
                            color: kprimeryLightererColor,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return HomeScreen();
                                  },
                                ),
                              );
                            },
                            child: Text('Log in')))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont have an Account ?',
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SignupScreen();
                              },
                            ),
                          );
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            ))
          ],
        )));
  }
}
