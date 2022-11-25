import 'package:celebrities_app/modules/mobile/celebrity_mobile_view.dart';
import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CelebrityMobileView());
  }
}
