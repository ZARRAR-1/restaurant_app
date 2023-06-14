import 'package:flutter/material.dart';
import '../Home/home_page.dart';
import '../global.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: secondaryColor,
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: Icon(
                Icons.home,
                color: index == 0
                    ? primaryColor
                    : Theme.of(context).textTheme.bodySmall!.color,
              ),
              onPressed: () {
                if (index != 0) {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const HomePage()));
                }
              }),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: index == 1
                      ? primaryColor
                      : Theme.of(context).textTheme.bodySmall!.color,
                ),
                onPressed: () {
                  if (index != 1);
                    // Navigator.of(context).pushReplacement(MaterialPageRoute(
                    //     builder: (context) => FavoritesPage()));
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: index == 2
                      ? primaryColor
                      : Theme.of(context).textTheme.bodySmall!.color,
                ),
                onPressed: () {}),
          ),
          IconButton(
              icon: Icon(
                Icons.account_circle,
                color: index == 3
                    ? primaryColor
                    : Theme.of(context).textTheme.bodySmall!.color,
              ),
              onPressed: () {})
        ],
      ),
    );
  }
}
