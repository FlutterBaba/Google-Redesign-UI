import 'package:flutter/material.dart';
import 'package:flutter_google_redesign/screens/mobile_screen.dart';

import 'desktop_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return Desktop();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return Desktop();
        } else {
          return MobileScreen();
        }
      },
    );
  }
}
