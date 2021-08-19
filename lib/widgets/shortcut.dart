import 'package:flutter/material.dart';
import 'package:flutter_google_redesign/stylies/web_colors.dart';

class ShortCut extends StatelessWidget {
  final bool switchValue;
  final Widget? child;

  const ShortCut({Key? key, required this.switchValue, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Material(
        elevation: 2,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        child: CircleAvatar(
          backgroundColor:
              switchValue ? DarkColor.KsearchColor : LightColor.KsearchColor,
          child: child,
        ),
      ),
    );
  }
}
