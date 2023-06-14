import 'package:flutter/material.dart';
import 'package:restaurant_app/Home/popular_items.dart';

import '../CustomWidgets/custom_scaffold.dart';
import 'dishes.dart';
import 'dishes_1.dart';


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
          const SizedBox(
            // A new Widget to be added tomorrow
             height: 10,
          ),
          PopularItems(),
        ],
      )

    );
  }


}
