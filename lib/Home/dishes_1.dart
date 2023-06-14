import 'package:flutter/material.dart';

import '../CustomWidgets/circular_button.dart';
import '../global.dart';

class Dishes_1 extends StatefulWidget {
  @override
  _Dishes_1State createState() => _Dishes_1State();
}

class _Dishes_1State extends State<Dishes_1> {
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

  final PageController _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _startAutoAnimation();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _startAutoAnimation() {
    Future.delayed(const Duration(seconds: 3), () {
      if (_currentPage < items.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      _startAutoAnimation();
    });
  }

  @override
  Widget build(BuildContext context) {
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
          width: MediaQuery.of(context).size.width,
          child: PageView.builder(
            controller: _pageController,
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return hotItems(context, index);
            },
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
          ),
        ),
      ],
    );
  }

  Widget hotItems(BuildContext context, int index) {
    List<Widget> getRatingRow() {
      List<Widget> row = [];
      for (int i = 0; i < 5; i++) {
        row.add(
          const Icon(
            Icons.star,
            color: Colors.orangeAccent,
            size: 10,
          ),
        );
      }
      row.add(Container(
        width: 8,
      ));
      row.add(
        Text(
          '5.0 (23 Reviews)',
          style: setTextStyle(size: 10, color: primaryTextColor),
        ),
      );
      return row;
    }

    return InkWell(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    items[index]['img'],
                    height: MediaQuery.of(context).size.height / 6,
                    width: MediaQuery.of(context).size.width,
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
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 2),
            child: Text(
              items[index]['name'],
              style: setTextStyle(
                  size: 16, weight: FontWeight.w900, color: primaryTextColor),
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
