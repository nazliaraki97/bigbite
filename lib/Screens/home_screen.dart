import 'dart:ui';

import 'package:big_bite/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomeScreen extends StatelessWidget {
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
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: SizedBox(
                        height: 200.0,
                        child: Carousel(
                          images: [
                            AssetImage('assets/rs1.jpg'),
                            AssetImage('assets/rs2.jpg'),
                            AssetImage('assets/rs3.jpg'),
                          ],
                          dotSize: 4.0,
                          dotSpacing: 15.0,
                          indicatorBgPadding: 5.0,
                          dotBgColor: Colors.white24.withOpacity(0.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 30, bottom: 20),
                      decoration: BoxDecoration(
                          color: kprimeryLighterColor,
                          borderRadius: BorderRadius.circular(29)),
                      width: 100,
                      height: 55,
                      padding: EdgeInsets.all(10),
                      child: ClipRRect(
                          child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search meal ',
                          prefixIcon: Icon(Icons.search),
                        ),
                      ))),
                  Stack(children: <Widget>[
                    Material(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(29),
                            ),
                            width: 400,
                            height: 100,
                            child: ClipRRect(
                              child: Image.asset(
                                'assets/cat.jpg',
                                fit: BoxFit.cover,
                              ),
                            )),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 30, bottom: 20, left: 10),
                        child: Text("Categories",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white70,
                                fontStyle: FontStyle.italic)))
                  ]),
                  GestureDetector(
                    onTap: (){
                      print("Container clicked");
                    },
                    child: Stack(children: [
                      Container(
                        margin: EdgeInsets.only(top: 30, bottom: 20),
                        decoration: BoxDecoration(
                            color: kprimeryLightererColor,
                            borderRadius: BorderRadius.circular(29)),
                        width: 400,
                        height: 55,
                        padding: EdgeInsets.all(8),
                      ),
                      Row(
                        children: [Padding(
                          padding: const EdgeInsets.only(left: 10,top: 40),
                          child: Icon(Icons.shopping_cart),
                        ),
                          Padding(
                            padding: const EdgeInsets.only(top: 47, bottom: 10,left: 12),
                            child: Text(
                              'my basket',
                              style: TextStyle(fontSize: 17),
                            ),
                          )
                        ],
                      )
                    ]),
                  ),
                ]))
          ],
        )));
  }
}
