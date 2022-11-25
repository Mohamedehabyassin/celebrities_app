import 'package:celebrities_app/modules/desktop/desktop_screen.dart';
import 'package:celebrities_app/modules/mobile/mobile_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              debugPrint("${constraints.minWidth.toInt()}");
          if (constraints.minWidth.toInt() <= 580) {
            return MobileScreen();
          }

          return DesktopScreen();
        }));
  }
}
