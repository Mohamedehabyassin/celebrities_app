import 'package:celebrities_app/modules/desktop/celebrity_desktop_view.dart';
import 'package:flutter/material.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CelebrityDesktopView());
  }
}
