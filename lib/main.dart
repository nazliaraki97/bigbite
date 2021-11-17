import 'package:big_bite/Screens/Login_screen.dart';
import 'package:big_bite/Screens/SignUp_screen.dart';
import 'package:big_bite/constants.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

          //  primarySwatch: Colors.blue,
          ),
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimeryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
                      child: Image.asset(
                    'assets/burr.png',
                  )),
                  Container(
                      width: 250,
                      height: 65,
                      padding: EdgeInsets.all(3),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(29),
                          child: FlatButton(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 40),
                              color: kprimeryLightColor,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return LoginScreen();
                                    },
                                  ),
                                );
                              },
                              child: Text('Log in')))),
                  Container(
                      width: 250,
                      height: 65,
                      padding: EdgeInsets.all(3),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(29),
                          child: FlatButton(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 40),
                              color: kprimeryLightColor,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return SignupScreen();
                                    },
                                  ),
                                );
                              },
                              child: Text('Sign up'))))
                ]))
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
