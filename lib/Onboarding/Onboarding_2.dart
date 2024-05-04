import 'package:flutter/material.dart';

import 'Onboarding_3.dart';

class Welcome2 extends StatefulWidget{
  const Welcome2({Key? key}) : super(key: key);

  @override
  State<Welcome2> createState() => _Welcome2State();
}

class _Welcome2State extends State<Welcome2>
    with SingleTickerProviderStateMixin {
  late Animation<double> _image_animation;
  late Animation<double> _text_animation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration.zero,
          () {
        setState(
              () {
            _controller = AnimationController(
              duration: const Duration(seconds: 3),
              // Extend duration to accommodate both animations
              vsync: this,
            );

            _image_animation = Tween(begin: 0.0, end: 1.0).animate(
              CurvedAnimation(
                parent: _controller,
                curve: const Interval(
                  0.0, // Start immediately for the image
                  0.5, // End halfway through the controller's duration
                  curve: Curves.easeIn,
                ),
              ),
            );
            _text_animation = Tween(begin: 0.0, end: 1.0).animate(
              CurvedAnimation(
                parent: _controller,
                curve: const Interval(
                  0.5, // Start halfway through the controller's duration
                  1.0, // End at the end of the controller's duration
                  curve: Curves.easeIn,
                ),
              ),
            );

            _controller.forward(); //Start the animation
          },
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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
                child: FadeTransition(
                  opacity: _image_animation,
                  child: Image.asset(
                    'images/delivery.png',
                  ),
                ),
              ),
            ),

            Flexible(
              flex: 1,
              child: FadeTransition(
                opacity: _text_animation,
                child: const Column(
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
                      style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
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
                const Icon(
                  Icons.more_horiz_rounded,
                ),
                Flexible(
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
