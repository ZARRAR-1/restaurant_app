import 'package:flutter/material.dart';

import 'Onboarding_3.dart';

class Welcome2 extends StatefulWidget {
  const Welcome2({Key? key}) : super(key: key);

  @override
  State<Welcome2> createState() => _Welcome2State();
}

class _Welcome2State extends State<Welcome2> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration.zero,
      () => setState(
        () {
          _opacity = 1.0;
        },
      ),
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
              height: 0,
            ),
            Flexible(
              flex: 2,
              child: Semantics(
                label:
                    "Animated image showcasing that food is always delivered on time & quickly",
                child: AnimatedOpacity(
                  opacity: _opacity,
                  duration: const Duration(seconds: 2),
                  curve: Curves.easeIn,
                  child: Image.asset(
                    'images/delivery.png',
                  ),
                ),
              ),
            ),

            const Flexible(
              flex: 1,
              child: Column(
                children: [
                  Text(
                    '\nFast Delivery',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 33,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '\nServing You Quick & Easy\nRound the Clock!',
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
                        'Skip',
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
                                builder: ((context) => (const Welcome3()))));
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
