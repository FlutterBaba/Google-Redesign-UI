import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  final bool switchValue;
  final void Function(bool)? onChanged;
  const SwitchButton(
      {Key? key, required this.switchValue, required this.onChanged})
      : super(key: key);

  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: widget.switchValue,
      activeColor: Colors.blue,
      onChanged: widget.onChanged,
    );
  }
}
