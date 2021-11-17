import 'dart:ui';

import 'package:big_bite/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class categoriesScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kprimeryColor,
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          // Generate 100 widgets that display their index in the List.
          children: [
            Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  //  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  child: Image.asset(
                    'assets/kah.jpg',
                    fit: BoxFit.cover,
                  ),
                )),Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  //  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  child: Image.asset(
                    'assets/bubu.jpg',
                    fit: BoxFit.cover,
                  ),
                )),Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  //  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  child: Image.asset(
                    'assets/se.jpg',
                    fit: BoxFit.cover,
                  ),
                )),Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  //  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  child: Image.asset(
                    'assets/ste.jpg',
                    fit: BoxFit.cover,
                  ),
                )),Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  //  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  child: Image.asset(
                    'assets/ice.jpg',
                    fit: BoxFit.cover,
                  ),
                )),Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  //  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  child: Image.asset(
                    'assets/pi.jpg',
                    fit: BoxFit.cover,
                  ),
                )),Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  //  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  child: Image.asset(
                    'assets/dess.jpg',
                    fit: BoxFit.cover,
                  ),
                )),Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  //  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  child: Image.asset(
                    'assets/pa.jpg',
                    fit: BoxFit.cover,
                  ),
                )),
          ],
        ));
  }
}
