import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_redesign/stylies/web_colors.dart';

class SettingPart extends StatefulWidget {
  final Function(PointerEnterEvent)? onEnter;
  final Function(PointerEnterEvent)? onExit;
  final String text;
  final bool mouseRegion;
  final bool switchValue;

  const SettingPart({
    Key? key,
    required this.onEnter,
    required this.mouseRegion,
    required this.onExit,
    required this.switchValue,
    required this.text,
  }) : super(key: key);

  @override
  _SettingPartState createState() => _SettingPartState();
}

class _SettingPartState extends State<SettingPart> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: widget.onEnter,
      child: Text(
        widget.text,
        style: TextStyle(
          decoration: widget.mouseRegion
              ? TextDecoration.underline
              : TextDecoration.none,
          color:
              widget.switchValue ? DarkColor.KtextColor : LightColor.KtextColor,
        ),
      ),
    );
  }
}
