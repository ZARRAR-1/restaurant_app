import 'package:flutter/material.dart';

import '../login-signUp/loginSignupChoice.dart';

class Welcome3 extends StatelessWidget {
  const Welcome3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 30,
            ),
            Flexible(
              flex: 2,
              child: Container(
                height: 350,
                width: 500,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 25),
                  child: Semantics(
                    label: "Animated image showcasing simple payments via cash on delivery",
                    child: Image.asset(
                      'images/easy-payment.png',
                    ),
                  ),
                ),
              ),
            ),

            const Flexible(
              flex: 1,
              child: Column(
                children: [
                  Text(
                    'Easy Payment',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 33,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '\nSimply Pay Cash on Delivery!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Container(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        '',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: const Icon(
                    Icons.more_horiz_rounded,
                  ),
                ),
                Flexible(
                  child: Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) => (LoginPage()))));
                      },
                      child: const Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
            // const SizedBox(
            //   height: 0.1,
            // )
          ],
        ),
      ),
    );
  }
}
