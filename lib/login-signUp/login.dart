import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../CustomWidgets/circular_button.dart';
import '../CustomWidgets/custom_text_field.dart';
import '../Home/home_page.dart';
import '../global.dart';

class UserAuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Semantics(
      label:
          'User Authorization Page; First field to enter user mane and second field to enter password',
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              'Log in to your account',
              style: setTextStyle(
                  color: primaryColor, weight: FontWeight.bold, size: 18),
            ),
          ),
          const CustomTextField(
            hintText: 'Username',
            prefixIcon: Icons.perm_identity,
          ),
          const CustomTextField(
            hintText: 'Password',
            prefixIcon: Icons.lock_outline,
            obscureText: true,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: setTextStyle(
                      color: primaryColor, weight: FontWeight.w500),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: Semantics(
                label: 'A button to tap to login',
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(primaryColor),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    // Navigator.of(context).pushReplacement(
                    //   MaterialPageRoute(
                    //     builder: (context) => const HomePage(),
                    //   ),
                    // );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: Text(
                    'LOGIN',
                    style: setTextStyle(
                        color: secondaryColor, weight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Divider(
              color: Colors.red,
              height: 0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Semantics(
                label: 'Circular button to login via facebook',
                child: CircularButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'images/fb_logo.png',
                    color: Colors.white,
                  ),
                  bgColor: Colors.blue.shade800,
                ),
              ),
              Semantics(
                label: 'Circular button to login via google',
                child: CircularButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'images/google_logo.png',
                    color: Colors.blue[800],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
