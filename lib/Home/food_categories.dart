import 'package:flutter/material.dart';
import 'package:restaurant_app/global.dart';

class foodCategories extends StatelessWidget {
  const foodCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    // final double deviceWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            'Food Categories',
            style: setTextStyle(
                size: 23, color: primaryTextColor, weight: FontWeight.w800),
          ),
        ),
        SizedBox(
          height: deviceHeight / 8,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              categoryCard(Image.asset("images/drinks.png"), 'Drinks',
                  '5 Items', context),
              categoryCard(Image.asset("images/others.png"),
                  'Others', '20 Items', context),
              categoryCard(Image.asset("images/desserts.png",),
                  'Desserts', '9 Items', context),
              categoryCard(Image.asset("images/fastfood.png",), 'Fast Food',
                  '5 Items', context),
              categoryCard(Image.asset("images/meals.png",), 'Meals',
                  '15 Items', context),
            ],
          ),
        ),
      ],
    );
  }

  Widget categoryCard(
       icon, String title, String num, BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              leading: icon,
              title: Text(title,style: setTextStyle(color: Colors.black, size: 18, weight: FontWeight.bold),),
              subtitle: Text(num),
              tileColor: secondaryColor,

              // iconColor: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}