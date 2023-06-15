import 'package:flutter/material.dart';
import 'package:restaurant_app/Home/popular_items.dart';

import '../CustomWidgets/custom_scaffold.dart';
import 'dishes_1.dart';
import 'food_categories.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        index: 0,
        title: 'Baharaan\'s Kitchen',
        body: ListView(
          children: [
            Dishes_1(),
            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
              child: foodCategories(),
              // child: ListView(
              //   scrollDirection: Axis.horizontal,
              //   children: [
              //     Container(
              //       height: MediaQuery.of(context).size.height / 5,
              //       width: MediaQuery.of(context).size.width / 3,
              //       color: Colors.greenAccent,
              //     ),
              //     Container(
              //       height: MediaQuery.of(context).size.height / 5,
              //       width: MediaQuery.of(context).size.width / 3,
              //       color: Colors.redAccent,
              //     ),
              //     Container(
              //       height: MediaQuery.of(context).size.height / 5,
              //       width: MediaQuery.of(context).size.width / 3,
              //       color: Colors.blueAccent,
              //     ),
              //     Container(
              //       height: MediaQuery.of(context).size.height / 5,
              //       width: MediaQuery.of(context).size.width / 3,
              //       color: Colors.amberAccent,
              //     ),
              //   ],
              // ),
            ),
            PopularItems(),
          ],
        ));
  }
}
