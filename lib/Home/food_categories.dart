import 'package:flutter/material.dart';
import 'package:restaurant_app/global.dart';

class foodCategories extends StatelessWidget {
  const foodCategories({super.key});


  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        // Container(
        //   height: MediaQuery.of(context).size.height / 5,
        //   width: MediaQuery.of(context).size.width / 3,
        //   color: Colors.greenAccent,
        // ),
        // Container(
        //   height: MediaQuery.of(context).size.height / 5,
        //   width: MediaQuery.of(context).size.width / 3,
        //   color: Colors.redAccent,
        // ),
        // Container(
        //   height: MediaQuery.of(context).size.height / 5,
        //   width: MediaQuery.of(context).size.width / 3,
        //   color: Colors.blueAccent,
        // ),
        // Container(
        //   height: MediaQuery.of(context).size.height / 5,
        //   width: MediaQuery.of(context).size.width / 3,
        //   color: Colors.amberAccent,
        // ),
        categoryCard(
            const Icon(Icons.local_drink_rounded), 'Drinks', '5 Items', context),
        categoryCard(Icon(Icons.energy_savings_leaf_rounded), 'Miscellaneous',
            '20 Items', context),
        categoryCard(
            Icon(Icons.signal_wifi_0_bar_outlined), 'Desserts', '9 Items', context),
        categoryCard(Icon(Icons.fastfood_rounded), 'Fast Food', '5 Items', context),
        categoryCard(Icon(Icons.set_meal_rounded), 'Meals', '15 Items', context),
      ],
    );
  }

  Widget categoryCard(Icon icon, String title, String num, BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            height:30,
            width: MediaQuery.of(context).size.width / 2,
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              leading: icon,
              title: Text(title),
              subtitle: Text(num),
              tileColor: secondaryColor,

              // iconColor: Colors.transparent,
            ),
          ),
          // ListTile(
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(10),
          //   ),
          //   leading: icon,
          //   title: Text(title),
          //   subtitle: Text(num),
          //   tileColor: secondaryColor,
          //
          //   // iconColor: Colors.transparent,
          // ),
        ),
      ),
    );
  }
}

// Container(
// color: Colors.green,
// height: 10,
// width: 50,
// ),
