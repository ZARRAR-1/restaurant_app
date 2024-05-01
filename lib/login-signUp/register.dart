import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../CustomWidgets/circular_button.dart';
import '../CustomWidgets/custom_text_field.dart';
import '../Home/home_page.dart';
import '../global.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Semantics(
      label:
          'User Registration Page; first field to enter username , second field for email and third field for password',
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              'Create an account',
              style: setTextStyle(
                  color: primaryColor, weight: FontWeight.bold, size: 18),
            ),
          ),
          const CustomTextField(
            hintText: 'Username',
            prefixIcon: Icons.perm_identity,
          ),
          const CustomTextField(
            hintText: 'Email',
            prefixIcon: Icons.mail_outline,
          ),
          const CustomTextField(
            hintText: 'Password',
            prefixIcon: Icons.lock_outline,
            obscureText: true,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: Semantics(
                label: 'A button to tap to register',
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(primaryColor),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  child: Text(
                    'REGISTER',
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
