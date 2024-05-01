import 'package:flutter/material.dart';
import 'package:restaurant_app/Onboarding/Onboarding_2.dart';

class Welcome1 extends StatefulWidget {
  const Welcome1({Key? key}) : super(key: key);

  @override
  State<Welcome1> createState() => _Welcome1State();
}

class _Welcome1State extends State<Welcome1> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      setState(() {
        _opacity = 1.0;
      });
    },);
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
              height: 33,
            ),
            Flexible(
              flex: 1,
              child: Semantics(
                label:
                'Animated image showcasing that fresh food is always served',
                child: AnimatedOpacity(
                  duration: const Duration(seconds: 2),
                  opacity: _opacity,
                  curve: Curves.easeIn,
                  child: Image.asset(
                    'images/first.png',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Flexible(
              flex: 1,
              child: Column(
                children: [
                  Text(
                    '\nFresh Food',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 33,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '\nFresh food made from the finest\ningredients and always served hot!',
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
                        print('Next button pressed');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => (const Welcome2()))));
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
          ],
        ),
      ),
    );
  }
}
