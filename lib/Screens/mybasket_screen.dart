import 'dart:ui';

import 'package:big_bite/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MybasketScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kprimeryColor,
        body: Center(
            child: Column(children: [
          Expanded(
              child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.all(15),
                  children: [Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text('ff'),



                  )]))
        ])));
  }
}
