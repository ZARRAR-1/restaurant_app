import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
            Semantics(
              label: "Newly Added Dishes",
              child: Dishes_1(),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              child: Semantics(
                label: 'Food Categories',
                child: const foodCategories(),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Semantics(
              label: 'Popular Items',
              child: PopularItems(),
            ),
          ],
        ));
  }
}
