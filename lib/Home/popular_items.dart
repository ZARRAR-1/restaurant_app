import 'package:flutter/material.dart';

import '../CustomWidgets/circular_button.dart';
import '../global.dart';

class PopularItems extends StatelessWidget {
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
    List<Widget> gridItems = [];

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                'Popular Items',
                style: setTextStyle(
                    size: 23, color: primaryTextColor, weight: FontWeight.w800),
              ),
            ),
            // TextButton(
            //     onPressed: () {},
            //     child: Text(
            //       'View More',
            //       style: setTextStyle(
            //           color: primaryColor, weight: FontWeight.bold, size: 16),
            //     ))
          ],
        ),
        // StreamBuilder<QuerySnapshot>(
        //   stream: Firestore.instance.collection('popular_items').snapshots(),
        //   builder: (context, snapshot) {
        //     if (!snapshot.hasData) return LinearProgressIndicator();
        //
        //     return _buildGridView(context, snapshot.data.documents, gridItems);
        //   },
        // ),
        _buildGridView(context, gridItems),
      ],
    );
  }

  // Widget _buildGridView(BuildContext context, List<DocumentSnapshot> documents, List<Widget> x)
  Widget _buildGridView(BuildContext context, List<Widget> x) {
    List<Widget> getRatingRow() {
      List<Widget> row = [];
      for (int i = 0; i < 5; i++) {
        row.add(Icon(
          Icons.star,
          color: Colors.orangeAccent,
          size: 11,
        ));
      }
      row.add(Container(
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

    int counter = 0;

    // documents.forEach((item)
    for (int i = 0; i < 12; i++) {
      x.add(
        InkWell(
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
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 3.6,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 2.2,
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
                          onPressed: () {}),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 2),
                  child: Text(
                    items[counter]['name'],
                    style: setTextStyle(
                        size: 20,
                        weight: FontWeight.w900,
                        color: primaryTextColor),
                  ),
                ),
                Row(
                  children: getRatingRow(),
                ),
              ],
            )),
      );
      counter++;
    }
    return GridView.count(
      shrinkWrap: true,
      primary: false,
      padding: const EdgeInsets.all(8),
      crossAxisSpacing: 8,
      childAspectRatio: MediaQuery
          .of(context)
          .size
          .width /
          (MediaQuery
              .of(context)
              .size
              .height / 1.25),
      mainAxisSpacing: 8,
      crossAxisCount: 2,
      children: x,
    );
  }
}
