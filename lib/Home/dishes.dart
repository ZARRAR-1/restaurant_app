import 'package:flutter/material.dart';

import '../CustomWidgets/circular_button.dart';
import '../global.dart';

class dishes extends StatelessWidget {
  dishes({Key? key}) : super(key: key);
  final List<Map> items = [
    {"img": "images/food1.jpeg", "name": "Fruit Salad"},
    {"img": "images/food2.jpeg", "name": "Fruit Salad"},
    {"img": "images/food3.jpeg", "name": "Hamburger"},
    {"img": "images/food4.jpeg", "name": "Fruit Salad"},
    {"img": "images/food5.jpeg", "name": "Hamburger"},
    {"img": "images/food6.jpeg", "name": "Steak"},
    {"img": "images/food7.jpeg", "name": "Pizza"},
    {"img": "images/food8.jpeg", "name": "Asparagus"},
    {"img": "images/food9.jpeg", "name": "Salad"},
    {"img": "images/food10.jpeg", "name": "Pizza"},
    {"img": "images/food11.jpeg", "name": "Pizza"},
    {"img": "images/food12.jpg", "name": "Salad"},
  ];

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    List<Widget> Items = [];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Dishes',
                style: setTextStyle(
                    size: 23, color: primaryTextColor, weight: FontWeight.w800),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                'View More',
                style: setTextStyle(
                    color: primaryColor, weight: FontWeight.bold, size: 16),
              ),
            )
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 4,
          width: deviceWidth,
          child: ListView(

            scrollDirection: Axis.horizontal,
            children: [
              hotItems(context, items, 0),
              const SizedBox(
                width: 15,
              ),
              hotItems(context, items, 1),
              const SizedBox(
                width: 15,
              ),
              hotItems(context, items, 2),
              const SizedBox(
                width: 15,
              ),
              hotItems(context, items, 3),
              const SizedBox(
                width: 15,
              ),
              hotItems(context, items, 4),
              const SizedBox(
                width: 15,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget hotItems(BuildContext context, List<Map> items, counter) {
    //Redundant code
    List<Widget> getRatingRow() {
      List<Widget> row = [];
      row.add(
          Container(
            width: 5,
          ));
      for (int i = 0; i < 5; i++) {
        row.add(const Icon(
          Icons.star,
          color: Colors.orangeAccent,
          size: 11,
        ));
      }
      row.add(
          Container(
        width: 8,
      ));
      row.add(
        Text(
          '5.0 (23 Reviews)',
          style: setTextStyle(size: 11, color: primaryTextColor),
        ),
      );
      return row;
    }

    return InkWell(
      onTap: () {},
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  items[counter]['img'],
                  height: MediaQuery.of(context).size.height /6,
                  width: MediaQuery.of(context).size.width ,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                height: 30,
                width: 30,
                right: 8.0,
                bottom: 8.0,
                child: CircularButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: primaryColor,
                    size: 15,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 2, left: 5, right: 5),
            child: Text(
              items[counter]['name'],
              style: setTextStyle(
                  size: 20, weight: FontWeight.w900, color: primaryTextColor),
            ),
          ),
          Row(
            children: getRatingRow(),
          ),
        ],
      ),
    );
  }
}
