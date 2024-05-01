import 'package:flutter/material.dart';

import '../login-signUp/loginSignupChoice.dart';

class Welcome3 extends StatefulWidget {
  const Welcome3({Key? key}) : super(key: key);

  @override
  State<Welcome3> createState() => _Welcome3State();
}

class _Welcome3State extends State<Welcome3> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration.zero,
      () {
        setState(() {
          _opacity = 1.0;
        });
      },
    );
  }

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
                child: Semantics(
                  label:
                      "Animated image showcasing simple payments via cash on delivery",
                  child: AnimatedOpacity(
                    duration: const Duration(seconds: 2),
                    opacity: _opacity,
                    curve: Curves.easeIn,
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => (LoginPage()))));
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
