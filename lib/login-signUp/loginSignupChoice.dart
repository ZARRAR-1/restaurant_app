import 'package:flutter/material.dart';
import 'package:restaurant_app/login-signUp/register.dart';

import '../Home/home_page.dart';
import '../global.dart';
import 'login.dart';

class LoginPage extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Login'),
    Tab(text: 'Register'),
  ];

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalCache.instance.fontSize = MediaQuery.of(context).size.width * 0.04;
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Material(
                color: secondaryColor,
                elevation: 4,
                child: TabBar(
                  tabs: myTabs,
                  indicatorColor: primaryColor,
                  labelColor: primaryColor,
                  unselectedLabelColor: Colors.grey,
                  labelStyle: setTextStyle(size: 20.0, weight: FontWeight.w800),
                ),
              ),
              Expanded(
                child: TabBarView(children: [
                  UserAuthPage(),
                  RegistrationPage(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
