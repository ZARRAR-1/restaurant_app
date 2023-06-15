import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  const CircularButton(
      {required this.icon,
      required this.onPressed,
      this.bgColor = Colors.white});

  final Widget icon;
  final void Function() onPressed;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: const CircleBorder(),
      elevation: 5.0,
      fillColor: bgColor,
      padding: const EdgeInsets.all(5.0),
      onPressed: onPressed,
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: icon,
      ),
    );
  }
}
